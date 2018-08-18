# frozen_string_literal: true

namespace :setup do
  desc 'Clears all models'
  task clear_all: :environment do
    ModelConstructor.instance.clear_all_models
  end
  desc 'Runs column constructor'
  task create_columns: :environment do
    constructor = ModelConstructor.instance
    constructor.create_columns
  end

  desc 'Runs row constructor'
  task create_rows: :environment do
    constructor = ModelConstructor.instance
    constructor.create_rows
  end

  desc 'Runs correspondence constructor'
  task create_correspondences: :environment do
    constructor = ModelConstructor.instance
    constructor.pass_columns_in_correspondence_generator
  end

  desc 'Runs all tasks'
  task all: %i[clear_all create_columns create_rows create_correspondences]
end
