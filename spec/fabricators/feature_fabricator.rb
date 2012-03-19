Fabricator(:feature) do
  title { Forgery::LoremIpsum.text }
  topic nil
  answer_type { Forgery::AnswerType.valid }
end

Fabricator :notitle_feature, from: :feature do
  title ''
end

Fabricator :boolean_feature, from: :feature do
  answer_type :boolean
end

Fabricator :descriptive_feature, from: :feature do
  answer_type :descriptive
end

Fabricator :invalid_answer_type_feature, from: :feature do
  answer_type { Forgery::AnswerType.invalid }
end
