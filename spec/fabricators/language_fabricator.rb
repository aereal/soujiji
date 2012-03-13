Fabricator :language do
  name { Forgery::Personal.language }
end

Fabricator :nameless_language, from: :language do
  name ''
end
