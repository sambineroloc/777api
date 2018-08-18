class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :title
      t.string :roman_numeral

      t.timestamps
    end
  end
end