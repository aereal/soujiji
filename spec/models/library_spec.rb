describe Library do
  subject { FactoryGirl.build(:library) }

  describe :answers do
    context "already saved related answers" do
      before do
        subject.save
        rand(10).times { FactoryGirl.create(:boolean_answer, library: subject) }
      end

      its(:answers) { should be_all {|a| Answer === a } }
    end
  end

  describe :language do
    describe :association do
      it { should respond_to :language }

      it { should respond_to :language= }
    end

    describe :validation do
      context "when given no language" do
        subject { FactoryGirl.build(:library, language: nil) }

        it { should_not be_valid }
      end
    end
  end

  describe :name do
    describe :validation do
      context "when given empty name" do
        subject { FactoryGirl.build(:nameless_library) }

        it { should_not be_valid }
      end

      context "when given some name" do
        it { should be_valid }
      end
    end
  end
end
