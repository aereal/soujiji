describe Answer do
  subject { Fabricate.build(:answer) }

  context "with Library" do
    before { subject.library = given_library }
    let(:given_library) { Fabricate.build(:library) }

    its(:library) { should eq given_library }
  end

  context 'is boolean' do
    subject { Fabricate.build(:boolean_answer) }

    it { should be_valid }

    context "#content given with true" do
      before { subject.content = true }

      it { should be_valid }
    end

    context "#content given with false" do
      before { subject.content = false }

      it { should be_valid }
    end

    context "#content given with scalar" do
      before { subject.content = Forgery::LoremIpsum.text }

      it { should_not be_valid }
    end
  end

  context "#type with descriptive" do
    subject { Fabricate.build(:descriptive_answer) }

    it { should be_valid }

    context "#content given with texts" do
      before { subject.content = Forgery::LoremIpsum.text }

      it { should be_valid }
    end
  end

  describe 'with #type which is not boolean, nor descriptive' do
    before { subject.type = Forgery::AnswerType.invalid }

    it { should_not be_valid }
  end
end
