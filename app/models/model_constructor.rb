require 'singleton'

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
    @data.each do |key, value|
      title = value['columnName']
      roman_numeral = key
      Column.create(title: title, roman_numeral: roman_numeral)
    end
  end
end
