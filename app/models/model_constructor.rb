# frozen_string_literal: true

require 'singleton'

# This class reads data from json assets and uses the data to construct
# models for querying
class ModelConstructor
  include Singleton

  attr_accessor :data, :name_map

  def initialize
    @data = retrieve_json
    @name_map = retrieve_name_map
  end

  def retrieve_json
    JSON.parse(File.read('public/assets/liber777.json'))
  end

  def retrieve_name_map
    JSON.parse(File.read('public/assets/column_and_row_map.json'))
  end

  def create_columns
    @data.each do |column, value|
      title = value['columnName']
      query_param = ModelConstructor.instance.name_map['columns'][column]
      roman_numeral = column
      Column.create(
        title: title,
        roman_numeral: roman_numeral,
        query_param: query_param
      )
    end
  end

  def create_rows
    @data['I.'].each do |row, value|
      query_param = ModelConstructor.instance.name_map['rows'][row]
      next if row == 'columnName'
      Row.create(
        number: value,
        query_param: query_param
      )
    end
  end

  def create_correspondence_from_columns(column_contents, current_column)
    column_contents.each do |row, correspondence|
      next if row == 'columnName'
      correspondence = 'VALUE EMPTY' if correspondence == ''
      current_row = Row.find_by(number: row)
      Correspondence.create(
        value: correspondence,
        column: current_column,
        row: current_row
      )
    end
  end

  def pass_columns_in_correspondence_generator
    @data.each do |column, value|
      current_column = Column.find_by(roman_numeral: column)
      create_correspondence_from_columns(value, current_column)
    end
  end

  def clear_all_models
    Column.delete_all && Row.delete_all && Correspondence.delete_all
  end
end
