describe Topic do
  subject { FactoryGirl.build(:topic) }

  describe 'with features' do
    let(:features) { Array.new(3) { FactoryGirl.build(:feature) } }

    before { subject.features = features }

    it { should be_valid }
  end
end
