# frozen_string_literal: true

# Migration to create columns
class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :title
      t.string :roman_numeral
      t.integer :query_param

      t.timestamps
    end
  end
end
