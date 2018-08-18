require 'rails_helper'

RSpec.describe Column, type: :model do
  subject { described_class.new(title: 'Some weird stuff', roman_numeral: 'I') }

  context 'when saving' do
    it 'is valid with valid attributes' do
      subject.save
      expect(subject).to be_valid
    end

    it 'validates presence of title' do
      subject.title = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it 'validates presence of roman numeral' do
      subject.roman_numeral = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it 'validates uniqueness of roman numeral' do
      subject.save
      duplicate_column = described_class.new(
        title: 'fake title',
        roman_numeral: 'I'
      )
      duplicate_column.save
      expect(subject).to be_valid
      expect(duplicate_column).to_not be_valid
    end
  end
end
