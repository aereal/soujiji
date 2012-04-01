describe Feature do
  subject { FactoryGirl.build(:feature) }

  describe 'with no #title' do
    subject { FactoryGirl.build(:notitle_feature) }

    it { should_not be_valid }
  end

  describe 'with #title' do
    it { should be_valid, subject.errors.inspect }
  end

  describe 'with #answer_type which is boolean' do
    subject { FactoryGirl.build(:boolean_feature) }

    it { should be_valid }
  end

  describe 'with #answer_type which is descriptive' do
    subject { FactoryGirl.build(:descriptive_feature) }

    it { should be_valid }
  end


  describe 'with #answer_type which is not boolean, nor descriptive' do
    subject { FactoryGirl.build(:invalid_answer_type_feature) }

    it { should_not be_valid }
  end
end
