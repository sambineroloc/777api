require 'rails_helper'

RSpec.describe Column, type: :model do
  context 'when saving' do
    it 'is valid with valid attributes' do
      column = Column.new(title: 'Some weird stuff', roman_numeral: 'I')
      column.save
      expect(column).to be_valid
    end

    it 'validates presence of title' do
      column = Column.new(roman_numeral: 'I')
      column.save
      expect(column).to_not be_valid
    end

    it 'validates presence of roman numeral' do
      column = Column.new(title: 'Some weird stuff')
      column.save
      expect(column).to_not be_valid
    end
  end
end
