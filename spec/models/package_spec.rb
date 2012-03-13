describe Package do
  context "when given empty name" do
    subject { Package.new(name: '') }

    it { should_not be_valid }
  end

  context "when given some name" do
    subject { Package.new(name: 'rails') }

    it { should be_valid }
  end
end
