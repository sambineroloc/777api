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
end
