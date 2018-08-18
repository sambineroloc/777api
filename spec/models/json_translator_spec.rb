require 'rails_helper'

RSpec.describe JsonTranslator, type: :model do
  subject { described_class.instance }

  context 'when initialized' do
    it 'correctly returns JSON' do
      expect(subject.data).to eq(JSON.parse(File.read('public/assets/liber777.json')))
    end
  end
end
