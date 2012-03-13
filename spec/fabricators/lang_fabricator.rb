Fabricator :lang do
  name { Forgery::Personal.language }
end

Fabricator :nameless_lang, from: :lang do
  name ''
end
