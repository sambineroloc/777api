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

describe 'rake setup:create_rows', type: :task do
  it 'preloads the Rails environment' do
    expect(task.prerequisites).to include 'environment'
  end

  it 'creates the correct amount of columns' do
    task.execute
    expect(Row.all.length).to eq(35)
  end
end

describe 'rake setup:create_correspondences', type: :task do
  it 'preloads the Rails environment' do
    expect(task.prerequisites).to include 'environment'
  end

  it 'creates the correct amount of columns' do
    tasks['setup:create_columns'].execute
    tasks['setup:create_rows'].execute
    task.execute
    expect(Correspondence.all.length).to eq(3277)
  end
end
