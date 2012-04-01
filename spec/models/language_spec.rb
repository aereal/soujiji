describe Language do
  subject { FactoryGirl.build(:language) }

  describe :libraries do
    describe :association do
      it { should respond_to :libraries }

      it { should respond_to :libraries= }
    end
  end

  describe :name do
    describe :validation do
      context "when given empty name" do
        subject { FactoryGirl.build(:nameless_language) }

        it { should_not be_valid }
      end

      context "when given some name" do
        it { should be_valid }
      end

      context "with duplicated #name" do
        let(:name) { Forgery::Name.last_name }

        before do
          FactoryGirl.create(:language, name: name)
          subject.name = name
        end

        it { should_not be_valid }
      end
    end
  end
end
