require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :login, :mail, :hashed_password, :salt, :password_confirmation, :password
  has_many :factures
  
  validates :login, :presence => true, :uniqueness => true
  
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password
  
  validate :password_must_be_present
  
  after_destroy :ensure_an_user_remains 
  
  def User.authenticate(login, password)
    if user = find_by_login(login)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end

  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "security" + salt)
  end
  
  # 'password' = attribut virtuel
  def password=(password)
    @password = password
   
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
  
  private
    def password_must_be_present
      errors.add(:password, 'Missing password') unless hashed_password.present?
    end
  
  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  def ensure_an_user_remains
    if User.count.zero?
      raise "Can't delete last user!"
    end
  end
end
