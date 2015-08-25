FactoryGirl.define do
  factory :user do
    firstname 'John'
    lastname 'Malcovic'
    email Faker::Internet.email
    password 'password'
    password_confirmation 'password'
    status true

    trait :guest do
      role 0
    end

    trait :admin do
      role 1
    end

    trait :editor do
      role 2
    end

    trait :runner do
      role 3
    end
  end
end
