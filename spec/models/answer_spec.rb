describe Answer do
  subject { Fabricate.build(:answer) }

  describe 'with #type which is descriptive' do
    before { subject.type = :descriptive }

    it { should be_valid }
  end

  describe 'with #type which is boolean' do
    before { subject.type = :boolean }

    it { should be_valid }
  end

  describe 'with #type which is not boolean, nor descriptive' do
    before { subject.type = Forgery::AnswerType.invalid }

    it { should_not be_valid }
  end
end
