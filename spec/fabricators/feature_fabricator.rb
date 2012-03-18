Fabricator(:feature) do
  title { Forgery::LoremIpsum.text }
  topic nil
end
