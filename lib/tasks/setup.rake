namespace :setup do
  desc 'Runs the model constructors methods to create models'
  task populate_db: :environment do
    constructor = ModelConstructor.instance
    constructor.create_columns
    column_count = Column.all.length
    puts "#{column_count} / 189 Columns Created"

    constructor.create_rows
    row_count = Row.all.length
    puts "#{row_count} / 35 Rows Created"

    constructor.pass_columns_in_correspondence_generator
    correspondence_count = Correspondence.all.length
    puts "#{correspondence_count} / 3277 Rows Created"

    db_check = (column_count == 189 && row_count == 35 && correspondence_count == 3277)
    if db_check
      puts 'Everything was created successfully'
    else
      puts 'There were errors in your creation. Please make sure your setup is correct'
    end
  end
end
