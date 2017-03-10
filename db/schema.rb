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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170310162935) do

  create_table "empresas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Clave"
    t.string   "Nombre"
    t.string   "Localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidencia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "EmpresaId"
    t.integer  "RutaId"
    t.text     "Comentario", limit: 65535
    t.boolean  "Compartir"
    t.integer  "RedSocial"
    t.text     "PostRed",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "redes_sociales", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Clave"
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Clave"
    t.string   "Nombre"
    t.string   "TipoRuta"
    t.string   "MunicipioInicio"
    t.string   "MunicipioFin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
