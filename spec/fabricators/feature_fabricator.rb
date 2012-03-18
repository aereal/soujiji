Fabricator(:feature) do
  title { Forgery::LoremIpsum.text }
  topic nil
end

Fabricator :notitle_feature, from: :feature do
  title ''
end
