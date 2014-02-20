# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name "MyString"
    active false
    dcm_account_code "MyString"
    features "MyString"
  end

  factory :acme, class: Account do
    name "acme"
    dcm_account_code "ACME"
    active true
  end
end
