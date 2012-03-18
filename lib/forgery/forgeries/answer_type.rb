class Forgery::AnswerType < Forgery
  def self.valid
    dictionaries[:answer_types].sample
  end

  def self.invalid
    !dictionaries[:answer_types].include?(_type = Fogery::LoremIpsum.word) ?
      _type : invalid
  end
end
