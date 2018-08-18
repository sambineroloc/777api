# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ModelConstructor, type: :model do
  subject { described_class.instance }

  context 'when initialized' do
    it 'correctly returns JSON' do
      expect(subject.data).to eq(
        JSON.parse(
          File.read('public/assets/liber777.json')
        )
      )
    end

    it 'correctly loads the name map' do
      expect(subject.name_map).to eq(
        JSON.parse(
          File.read('public/assets/column_and_row_map.json')
        )
      )
    end
  end
end
