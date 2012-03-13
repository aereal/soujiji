describe Package do
  context "when given empty name" do
    subject { Fabricate.build(:nameless_package) }

    it { should_not be_valid }
  end

  context "when given some name" do
    subject { Fabricate.build(:package) }

    it { should be_valid }
  end
end
