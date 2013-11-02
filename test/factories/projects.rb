# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    partner_id 1
    site "MyString"
    repository "MyString"
  end
end
