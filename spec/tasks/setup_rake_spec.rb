require 'rails_helper'

describe 'rake setup:create_columns', type: :task do
  it 'preloads the Rails environment' do
    expect(task.prerequisites).to include 'environment'
  end

  it 'creates the correct amount of columns' do
    task.execute
    expect(Column.all.length).to eq(TABLE_DATA['column_count'])
  end
end

describe 'rake setup:create_rows', type: :task do
  it 'preloads the Rails environment' do
    expect(task.prerequisites).to include 'environment'
  end

  it 'creates the correct amount of columns' do
    task.execute
    expect(Row.all.length).to eq(TABLE_DATA['row_count'])
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
    expect(Correspondence.all.length).to eq(TABLE_DATA['correspondence_count'])
  end

  describe 'rake setup:clear_all', type: :task do
    it 'preloads the Rails environment' do
      expect(task.prerequisites).to include 'environment'
    end

    it 'deletes all models' do
      tasks['setup:create_columns'].execute
      tasks['setup:create_rows'].execute
      tasks['setup:create_correspondences'].execute
      task.execute
      expect(Column.all.length).to eq(0)
      expect(Row.all.length).to eq(0)
      expect(Correspondence.all.length).to eq(0)
    end
  end
end
