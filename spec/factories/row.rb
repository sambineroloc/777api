FactoryBot.define do
  sequence :number do |n|
    "number #{n}"
  end

  factory :row do
    number { generate(:number) }
    query_param { generate(:query_param) }
  end
end
