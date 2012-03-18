describe Feature do
  subject { Fabricate.build(:feature) }

  describe 'with no #title' do
    subject { Fabricate.build(:notitle_feature) }

    it { should_not be_valid }
  end

  describe 'with #title' do
    it { should be_valid }
  end
end
