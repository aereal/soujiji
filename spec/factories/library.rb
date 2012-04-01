FactoryGirl.define do
  factory :library do
    name { Forgery::Name.full_name.underscore }
    language

    factory :nameless_library do
      name ''
    end
  end
end
