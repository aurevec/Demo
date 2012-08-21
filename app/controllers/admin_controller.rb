class AdminController < ApplicationController
  def index
    @total_factures = Facture.count
  end
end
