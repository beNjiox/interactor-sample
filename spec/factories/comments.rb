# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    email "MyString"
    comment "MyText"
  end
end
