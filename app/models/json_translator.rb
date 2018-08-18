require 'singleton'

class JsonTranslator
  include Singleton

  attr_accessor :data

  def initialize
    @data = retrieve_json
  end

  def retrieve_json
    JSON.parse(File.read('public/assets/liber777.json'))
  end
end
