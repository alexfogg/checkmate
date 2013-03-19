FactoryGirl.define do
  factory :user, class: User do
    username 'Bob'
    email 'bob@gmail.com'
    password 'a'
    password_confirmation 'a'
  end
end