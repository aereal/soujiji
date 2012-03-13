describe Lang do
  subject { Fabricate.build(:lang) }

  context "when given empty name" do
    subject { Fabricate.build(:nameless_lang) }

    it { should_not be_valid }
  end

  context "when given some name" do
    it { should be_valid }
  end
end
