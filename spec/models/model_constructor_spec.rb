require 'rails_helper'
RSpec.describe ModelConstructor, type: :model do
  let(:json) { JSON.parse(File.read('public/assets/liber777.json')) }
  let(:name_map) do
    JSON.parse(File.read('public/assets/column_and_row_map.json'))
  end
  let(:desired_number_of_columns) { 189 }
  let(:desired_number_of_rows) { 35 }
  let(:desired_number_of_correspondences) { 3277 }
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
      expect(Column.all.length).to eq(desired_number_of_columns)
    end

    it 'makes rows correctly' do
      subject.create_rows
      expect(Row.all.length).to eq(desired_number_of_rows)
    end

    it 'makes correspondences correctly' do
      subject.create_columns
      subject.create_rows
      subject.pass_columns_in_correspondence_generator
      expect(Correspondence.all.length).to eq(desired_number_of_correspondences)
    end

    it 'deletes all models' do
      subject.create_columns
      subject.create_rows
      subject.pass_columns_in_correspondence_generator
      subject.clear_all_models
      expect(Column.all.length).to eq(0)
      expect(Row.all.length).to eq(0)
      expect(Correspondence.all.length).to eq(0)
    end
  end
end
