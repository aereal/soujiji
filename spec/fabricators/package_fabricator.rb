Fabricator :package do
  name { Forgery::Name.full_name.underscore }
end

Fabricator :nameless_package, from: :package do
  name ''
end
