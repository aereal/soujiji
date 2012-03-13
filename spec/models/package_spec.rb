describe Package do
  subject { Fabricate.build(:package) }

  describe :lang do
    it { should respond_to :lang }

    it { should respond_to :lang= }
  end

  context "when given no language" do
    subject { Fabricate.build(:package, lang: nil) }

    it { should_not be_valid }
  end

  context "when given empty name" do
    subject { Fabricate.build(:nameless_package) }

    it { should_not be_valid }
  end

  context "when given some name" do
    it { should be_valid }
  end
end
