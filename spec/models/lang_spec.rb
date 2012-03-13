describe Lang do
  context "when given empty name" do
    subject { Lang.new(name: '') }

    it { should_not be_valid }
  end

  context "when given some name" do
    subject { Lang.new(name: 'Ruby') }

    it { should be_valid }
  end
end
