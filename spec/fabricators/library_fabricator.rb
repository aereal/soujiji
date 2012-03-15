Fabricator :library do
  name { Forgery::Name.full_name.underscore }
  language!
end

Fabricator :nameless_library, from: :library do
  name ''
end
