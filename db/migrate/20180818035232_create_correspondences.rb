# frozen_string_literal: true

# All the indexes of columns and rows
class CreateCorrespondences < ActiveRecord::Migration[5.2]
  def change
    create_table :correspondences do |t|
      t.string :value
      t.integer :column_id
      t.integer :row_id

      t.timestamps
    end
  end
end
