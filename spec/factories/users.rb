FactoryGirl.define do
  factory :user do

    email "test@te.st"
    password "testing1"

    factory :account_admin do
      association :account, factory: :acme
      roles ["account_admin"]
    end

    factory :admin do
      association :account, factory: :acme
      roles ["admin"]
    end

  end
end
