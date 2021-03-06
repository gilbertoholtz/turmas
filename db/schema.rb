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

ActiveRecord::Schema.define(:version => 20120609171255) do

  create_table "alunos", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notas", :force => true do |t|
    t.integer  "turma_id"
    t.integer  "aluno_id"
    t.float    "g1"
    t.float    "g2"
    t.float    "g3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "notas", ["aluno_id"], :name => "index_notas_on_aluno_id"
  add_index "notas", ["turma_id"], :name => "index_notas_on_turma_id"

  create_table "professors", :force => true do |t|
    t.string   "cgu"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "turmas", :force => true do |t|
    t.string   "codigo"
    t.string   "semestre"
    t.integer  "creditos"
    t.integer  "disciplina_id"
    t.integer  "professor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
