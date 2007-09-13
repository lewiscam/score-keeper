# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 14) do

  create_table "games", :force => true do |t|
    t.datetime "played_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "person_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points_awarded"
  end

  create_table "mugshots", :force => true do |t|
    t.integer  "size"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
    t.integer  "memberships_count", :default => 0
    t.integer  "games_won",         :default => 0
    t.integer  "goals_for",         :default => 0
    t.integer  "goals_against",     :default => 0
    t.integer  "mugshot_id"
    t.integer  "ranking",           :default => 2000
  end

  create_table "teams", :force => true do |t|
    t.integer  "game_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_ids"
    t.boolean  "won",        :default => false
  end

  add_index "teams", ["team_ids"], :name => "index_teams_on_team_ids"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.boolean  "is_admin",                                :default => false
  end

end
