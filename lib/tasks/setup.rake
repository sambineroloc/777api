# frozen_string_literal: true

namespace :setup do
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
    correspondence_count = Correspondence.all.length
    puts "#{correspondence_count} / 3277 Rows Created"
  end

  desc 'Runs all tasks'
  task all: %i[create_columns create_rows create_correspondences]
end
