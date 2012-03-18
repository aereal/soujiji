Fabricator(:feature) do
  title { Forgery::LoremIpsum.text }
  topic nil
end

Fabricator :notitle_feature, from: :feature do
  title ''
end

Fabricator :boolean_feature, from: :feature do
  answer_type :boolean
end

Fabricator :selectable_feature, from: :feature do
  answer_type :selectable
end

Fabricator :enumerative_feature, from: :feature do
  answer_type :enumerative
end

Fabricator :invalid_answer_type_feature, from: :feature do
  answer_type { Forgery::AnswerType.invalid }
end
