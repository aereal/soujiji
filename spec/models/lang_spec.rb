describe Lang do
  context "when given empty name" do
    subject { Fabricate.build(:nameless_lang) }

    it { should_not be_valid }
  end

  context "when given some name" do
    subject { Fabricate.build(:lang) }

    it { should be_valid }
  end
end
