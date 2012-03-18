describe Topic do
  subject { Fabricate.build(:topic) }

  describe 'with features' do
    let(:features) { Array.new(3) { Fabricate.build(:feature) } }

    before { subject.features = features }

    it { should be_valid }
  end
end
