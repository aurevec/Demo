# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120820211000) do

  create_table "clients", :force => true do |t|
    t.string   "societe"
    t.integer  "adresse_numero"
    t.string   "adresse_rue"
    t.integer  "adresse_cp"
    t.string   "adresse_ville"
    t.string   "adresse_pays"
    t.string   "numero_tva"
    t.integer  "telephone"
    t.integer  "mobile"
    t.string   "mail"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "facture_items", :force => true do |t|
    t.string   "libelle"
    t.integer  "quantite"
    t.decimal  "prix",        :precision => 10, :scale => 0
    t.text     "descritpion"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "facture_id"
    t.integer  "tva_id"
    t.integer  "produit_id"
  end

  create_table "factures", :force => true do |t|
    t.string   "reference"
    t.string   "intitule"
    t.date     "date_facturation"
    t.integer  "delai_paiement"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "type_id"
    t.integer  "statut_id"
  end

  create_table "produits", :force => true do |t|
    t.string   "reference"
    t.string   "nom"
    t.integer  "quantite"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.decimal  "prix",       :precision => 10, :scale => 0
  end

  create_table "statuts", :force => true do |t|
    t.string   "libelle"
    t.boolean  "display"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tvas", :force => true do |t|
    t.string   "libelle"
    t.decimal  "value",      :precision => 10, :scale => 0
    t.boolean  "display"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "libelle"
    t.boolean  "display"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "mail"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
