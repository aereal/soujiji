Fabricator :package do
  name 'Rails'
end

Fabricator :nameless_package, from: :package do
  name ''
end
