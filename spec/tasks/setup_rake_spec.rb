require 'rails_helper'

describe 'rake setup:create_columns', type: :task do
  it 'preloads the Rails environment' do
    expect(task.prerequisites).to include 'environment'
  end

  it 'creates the correct amount of columns' do
    task.execute
    expect(Column.all.length).to eq(189)
  end
end
