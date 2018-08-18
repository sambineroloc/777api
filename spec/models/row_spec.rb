# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Row, type: :model do
  subject { described_class.new(number: '1') }

  context 'when saving' do
    it 'is valid with valid attributes' do
      subject.save
      expect(subject).to be_valid
    end

    it 'validates presence of number' do
      subject.number = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it 'validates uniqueness of number' do
      subject.save
      duplicate_row = described_class.new(number: '1')
      duplicate_row.save
      expect(subject).to be_valid
      expect(duplicate_row).to_not be_valid
    end
  end
end
