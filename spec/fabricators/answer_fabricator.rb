Fabricator(:answer) do
  feature nil
  library nil
  type { Forgery::AnswerType.valid }
  content "MyText"
end

Fabricator :boolean_answer, from: :answer do
  type :boolean
  content { [true, false].sample }
end

Fabricator :descriptive_answer, from: :answer do
  type :descriptive
  content { Forgery::LoremIpsum.text }
end
