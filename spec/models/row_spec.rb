require 'rails_helper'

RSpec.describe Row, type: :model do
  context 'when saving' do
    it 'is valid with valid attributes' do
      row = Row.new(number: 1)
      row.save
      expect(row).to be_valid
    end

    it 'validates presence of number' do
      row = Row.new
      row.save
      expect(row).to_not be_valid
    end
  end
end
