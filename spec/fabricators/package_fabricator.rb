Fabricator :package do
  name { Forgery::Name.full_name.underscore }
  language!
end

Fabricator :nameless_package, from: :package do
  name ''
end
