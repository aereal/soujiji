class Forgery::AnswerType < Forgery
  def self.valid
    dictionaries[:answer_types].sample.to_sym
  end

  def self.invalid
    (!dictionaries[:answer_types].include?(_type = Forgery::LoremIpsum.word) ?
      _type : invalid).to_sym
  end
end
