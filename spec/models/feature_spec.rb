describe Feature do
  subject { Fabricate.build(:feature) }

  describe 'with no #title' do
    subject { Fabricate.build(:notitle_feature) }

    it { should_not be_valid }
  end

  describe 'with #title' do
    it { should be_valid, subject.errors.inspect }
  end

  describe 'with #answer_type which is boolean' do
    subject { Fabricate.build(:boolean_feature) }

    it { should be_valid }
  end

  describe 'with #answer_type which is descriptive' do
    subject { Fabricate.build(:descriptive_feature) }

    it { should be_valid }
  end


  describe 'with #answer_type which is not boolean, nor descriptive' do
    subject { Fabricate.build(:invalid_answer_type_feature) }

    it { should_not be_valid }
  end
end
