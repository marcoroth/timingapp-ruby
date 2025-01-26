# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 202_301_121_209) do
  # Could not dump table "AppActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'startDate'

  create_table "Application", force: :cascade do |t|
    t.text "bundleIdentifier"
    t.text "executable"
    t.text "title"
    t.text "property_bag"
    t.index %w[bundleIdentifier executable title], name: "index_application_on_bundleidentifier_executable_title"
  end

  create_table "Device", primary_key: "localID", force: :cascade do |t|
    t.integer "globalID", null: false
    t.binary "macAddress"
    t.text "displayName"
    t.text "property_bag"
  end

  # Could not dump table "Event" because of following StandardError
  #   Unknown type 'REAL' for column 'start_date'

  # Could not dump table "EventSource" because of following StandardError
  #   Unknown type 'BOOL' for column 'is_template'

  # Could not dump table "EventSourceTaskActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'deleted_at'

  create_table "Filter", force: :cascade do |t|
    t.integer "parentID"
    t.integer "listPosition", null: false
    t.text "title", null: false
    t.binary "predicate"
    t.boolean "isSample", default: false, null: false
    t.text "property_bag"
    t.index %w[parentID listPosition], name: "index_filter_on_parentid_listposition"
  end

  # Could not dump table "Integration" because of following StandardError
  #   Unknown type 'REAL' for column 'enabled_at'

  # Could not dump table "IntegrationProject" because of following StandardError
  #   Unknown type 'REAL' for column 'last_modified_origin'

  create_table "Path", force: :cascade do |t|
    t.text "stringValue", null: false
  end

  # Could not dump table "Project" because of following StandardError
  #   Unknown type 'REAL' for column 'productivityScore'

  # Could not dump table "TaskActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'startDate'

  create_table "Title", force: :cascade do |t|
    t.text "stringValue", null: false
  end

  # Could not dump table "integration_log_result" because of following StandardError
  #   Unknown type 'REAL' for column 'timestamp'

  add_foreign_key "AppActivity", "Application", column: "applicationID"
  add_foreign_key "AppActivity", "Device", column: "localDeviceID", primary_key: "localID"
  add_foreign_key "AppActivity", "Path", column: "pathID"
  add_foreign_key "AppActivity", "Project", column: "projectID", on_update: :cascade
  add_foreign_key "AppActivity", "Title", column: "titleID"
  add_foreign_key "Event", "Integration", column: "integration_id"
  add_foreign_key "EventSource", "Integration", column: "integration_id"
  add_foreign_key "Filter", "Filter", column: "parentID", on_update: :cascade
  add_foreign_key "IntegrationProject", "Integration", column: "integration_id"
  add_foreign_key "Project", "Project", column: "parentID", on_update: :cascade
  add_foreign_key "TaskActivity", "Project", column: "projectID", on_update: :cascade
end
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 202_301_121_209) do
  # Could not dump table "AppActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'startDate'

  create_table "Application", force: :cascade do |t|
    t.text "bundleIdentifier"
    t.text "executable"
    t.text "title"
    t.text "property_bag"
    t.index %w[bundleIdentifier executable title], name: "index_application_on_bundleidentifier_executable_title"
  end

  create_table "Device", primary_key: "localID", force: :cascade do |t|
    t.integer "globalID", null: false
    t.binary "macAddress"
    t.text "displayName"
    t.text "property_bag"
  end

  # Could not dump table "Event" because of following StandardError
  #   Unknown type 'REAL' for column 'start_date'

  # Could not dump table "EventSource" because of following StandardError
  #   Unknown type 'BOOL' for column 'is_template'

  # Could not dump table "EventSourceTaskActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'deleted_at'

  create_table "Filter", force: :cascade do |t|
    t.integer "parentID"
    t.integer "listPosition", null: false
    t.text "title", null: false
    t.binary "predicate"
    t.boolean "isSample", default: false, null: false
    t.text "property_bag"
    t.index %w[parentID listPosition], name: "index_filter_on_parentid_listposition"
  end

  # Could not dump table "Integration" because of following StandardError
  #   Unknown type 'REAL' for column 'enabled_at'

  # Could not dump table "IntegrationProject" because of following StandardError
  #   Unknown type 'REAL' for column 'last_modified_origin'

  create_table "Path", force: :cascade do |t|
    t.text "stringValue", null: false
  end

  # Could not dump table "Project" because of following StandardError
  #   Unknown type 'REAL' for column 'productivityScore'

  # Could not dump table "TaskActivity" because of following StandardError
  #   Unknown type 'REAL' for column 'startDate'

  create_table "Title", force: :cascade do |t|
    t.text "stringValue", null: false
  end

  # Could not dump table "integration_log_result" because of following StandardError
  #   Unknown type 'REAL' for column 'timestamp'

  add_foreign_key "AppActivity", "Application", column: "applicationID"
  add_foreign_key "AppActivity", "Device", column: "localDeviceID", primary_key: "localID"
  add_foreign_key "AppActivity", "Path", column: "pathID"
  add_foreign_key "AppActivity", "Project", column: "projectID", on_update: :cascade
  add_foreign_key "AppActivity", "Title", column: "titleID"
  add_foreign_key "Event", "Integration", column: "integration_id"
  add_foreign_key "EventSource", "Integration", column: "integration_id"
  add_foreign_key "Filter", "Filter", column: "parentID", on_update: :cascade
  add_foreign_key "IntegrationProject", "Integration", column: "integration_id"
  add_foreign_key "Project", "Project", column: "parentID", on_update: :cascade
  add_foreign_key "TaskActivity", "Project", column: "projectID", on_update: :cascade
end
