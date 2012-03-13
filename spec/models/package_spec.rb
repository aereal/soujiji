describe Package do
  subject { Fabricate.build(:package) }

  describe :language do
    describe :association do
      it { should respond_to :language }

      it { should respond_to :language= }
    end

    describe :validation do
      context "when given no language" do
        subject { Fabricate.build(:package, language: nil) }

        it { should_not be_valid }
      end
    end
  end

  describe :name do
    describe :validation do
      context "when given empty name" do
        subject { Fabricate.build(:nameless_package) }

        it { should_not be_valid }
      end

      context "when given some name" do
        it { should be_valid }
      end
    end
  end
end
