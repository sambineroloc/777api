require 'rails_helper'

RSpec.describe Correspondence, type: :model do
  let(:column) { Column.new(title: 'Some weird stuff', roman_numeral: 'I') }
  let(:row) { Row.new(number: 1) }
  subject do
    described_class.new(
      value: 'dandelions',
      column: column,
      row: row
    )
  end

  context 'when saving' do
    it 'is valid with valid attributes' do
      subject.save
      expect(subject).to be_valid
    end

    it 'validates presence of value' do
      subject.value = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it 'validates presence of column' do
      subject.column = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it 'validates presence of row' do
      subject.row = nil
      subject.save
      expect(subject).to_not be_valid
    end
  end
end
