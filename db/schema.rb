# frozen_string_literal: true

# rubocop:disable Style/NumericLiterals
ActiveRecord::Schema.define(version: 2018_08_18_035232) do
  # rubocop:enable Style/NumericLiterals

  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'columns', force: :cascade do |t|
    t.string 'title'
    t.string 'roman_numeral'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'correspondences', force: :cascade do |t|
    t.string 'value'
    t.integer 'column_id'
    t.integer 'row_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'rows', force: :cascade do |t|
    t.integer 'number'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
