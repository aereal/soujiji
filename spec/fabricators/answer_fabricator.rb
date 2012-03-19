Fabricator(:answer) do
  feature nil
  library nil
  type { Forgery::AnswerType.valid }
  content "MyText"
end
