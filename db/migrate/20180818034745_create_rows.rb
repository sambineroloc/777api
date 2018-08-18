# frozen_string_literal: true

# Rows in the table from 0 - 31bis
class CreateRows < ActiveRecord::Migration[5.2]
  def change
    create_table :rows do |t|
      t.string :number

      t.timestamps
    end
  end
end
