require 'rails_helper'

RSpec.describe Correspondence, type: :model do
  context 'when saving' do
    it 'is valid with valid attributes' do
      column = Column.new(title: 'Some weird stuff', roman_numeral: 'I')
      column.save
      row = Row.new(number: 1)
      row.save
      correspondence = Correspondence.new(
        value: 'dandelions',
        column_id: column.id,
        row_id: row.id
      )
      correspondence.save
      expect(correspondence).to be_valid
    end

    it 'validates presence of value' do
      correspondence = Correspondence.new
      correspondence.save
      expect(correspondence).to_not be_valid
    end

    it 'validates presence of column_id' do
      column = Column.new(title: 'Some weird stuff', roman_numeral: 'I')
      column.save
      row = Row.new(number: 1)
      row.save
      correspondence = Correspondence.new(
        value: 'dandelions',
        row_id: row.id
      )
      correspondence.save
      expect(correspondence).to_not be_valid
    end

    it 'validates presence of row_id' do
      column = Column.new(title: 'Some weird stuff', roman_numeral: 'I')
      column.save
      row = Row.new(number: 1)
      row.save
      correspondence = Correspondence.new(
        value: 'dandelions',
        column_id: column.id,
      )
      correspondence.save
      expect(correspondence).to_not be_valid
    end
  end
end
