# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    wallet nil
    user nil
    reciever "MyText"
    sender "MyText"
    amount ""
  end
end
