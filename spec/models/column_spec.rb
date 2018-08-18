# frozen_string_literal: true

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
  end
end
