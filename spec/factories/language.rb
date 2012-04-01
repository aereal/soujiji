FactoryGirl.define do
  factory :language do
    name { Forgery::Personal.language }

    factory :nameless_language do
      name ''
    end
  end
end
