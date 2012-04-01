FactoryGirl.define do
  factory :answer do
    feature
    library

    factory :boolean_answer do
      type :boolean
      content { [true, false].sample }
    end

    factory :descriptive_answer do
      type :descriptive
      content { Forgery::LoremIpsum.text }
    end
  end
end
