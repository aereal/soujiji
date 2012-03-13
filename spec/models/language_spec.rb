describe Language do
  subject { Fabricate.build(:language) }

  describe :packages do
    describe :association do
      it { should respond_to :packages }

      it { should respond_to :packages= }
    end
  end

  describe :name do
    describe :validation do
      context "when given empty name" do
        subject { Fabricate.build(:nameless_language) }

        it { should_not be_valid }
      end

      context "when given some name" do
        it { should be_valid }
      end
    end
  end
end