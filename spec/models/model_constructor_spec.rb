# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ModelConstructor, type: :model do
  let(:json) { JSON.parse(File.read('public/assets/column_and_row_map.json')) }
  let(:name_map) do
    JSON.parse(File.read('public/assets/column_and_row_map.json'))
  end
  subject { described_class.instance }

  context 'when initialized' do
    it 'correctly returns JSON' do
      expect(subject.data).to eq(json)
    end

    it 'correctly loads the name map' do
      expect(subject.name_map).to eq(name_map)
    end
  end

  context 'when using its methods' do
    it 'makes columns correctly' do
      subject.create_columns
      expect(Column.all.length).to eq(json.keys.length)
    end
  end
end
