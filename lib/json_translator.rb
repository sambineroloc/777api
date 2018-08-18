module JsonTranslator
  def retrieve_json
    JSON.parse(File.read('public/assets/liber777.json'))
  end
end
