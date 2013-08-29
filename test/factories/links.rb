# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    partner_id 1
    value "MyText"
    network_id 1
  end
end
