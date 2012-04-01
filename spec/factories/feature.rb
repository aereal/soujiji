FactoryGirl.define do
  factory :feature do
    title { Forgery::LoremIpsum.text }
    topic
    answer_type { Forgery::AnswerType.valid }

    factory :notitle_feature do
      title ''
    end

    factory :boolean_feature do
      answer_type :boolean
    end

    factory :descriptive_feature do
      answer_type :descriptive
    end

    factory :invalid_answer_type_feature do
      answer_type { Forgery::AnswerType.invalid }
    end
  end
end
