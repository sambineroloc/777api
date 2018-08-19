FactoryBot.define do
  sequence :title do |n|
    "title #{n}"
  end
  sequence :roman_numeral do |n|
    "#{n}"
  end
  sequence :query_param do |n|
    n
  end

  factory :column do
    title { generate(:title) }
    roman_numeral { generate(:roman_numeral) }
    query_param { generate(:query_param) }
  end
end
