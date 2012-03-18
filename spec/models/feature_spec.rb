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

  describe 'with #answer_type which is selectable' do
    subject { Fabricate.build(:selectable_feature) }

    it { should be_valid }
  end

  describe 'with #answer_type which is enumerative' do
    subject { Fabricate.build(:enumerative_feature) }

    it { should be_valid }
  end

  describe 'with #answer_type which is not boolean, selectable, nor enumerative' do
    subject { Fabricate.build(:invalid_answer_type_feature) }

    it { should_not be_valid }
  end
end
