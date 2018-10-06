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

ActiveRecord::Schema.define(version: 20171025090931) do

  create_table "post_ajobs", force: :cascade do |t|
    t.string "youremail"
    t.string "jobtitle"
    t.string "joblocation"
    t.string "jobregion"
    t.string "jobtype"
    t.string "jobcategory"
    t.string "jobtags"
    t.string "description"
    t.string "applicationemailurl"
    t.string "closingdata"
    t.string "companyname"
    t.string "companydescription"
    t.string "twittername"
    t.string "website"
    t.string "googleusername"
    t.string "facebookusername"
    t.string "linkedinusername"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imagename"
  end

  create_table "posta_resumes", force: :cascade do |t|
    t.string "yourname"
    t.string "youremail"
    t.string "professionalauto"
    t.string "location"
    t.string "photoname"
    t.string "resumecategory"
    t.string "resumecontent"
    t.string "skills"
    t.string "url"
    t.string "education"
    t.string "experience"
    t.string "resumefilename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
