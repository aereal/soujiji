describe LanguagesController do
  describe :GET, :show do
    before { get :show, name: language.name }

    describe :response do
      subject { response }

      context "when given unknown Language" do
        let(:language) { FactoryGirl.build(:language) }

        it { should be_not_found }
      end

      context "when given persisted Language" do
        let(:language) { FactoryGirl.create(:language) }

        it { should be_ok }
      end
    end

    describe :assigns do
      describe :language do
        subject { assigns(:language) }

        context "when given unknown Language" do
          let(:language) { FactoryGirl.build(:language) }

          it { should_not be }
        end

        context "when given persisted Language" do
          let(:language) { FactoryGirl.create(:language) }

          it { should eq language }
        end
      end
    end
  end

  describe :GET, :index do
    before { get :index }

    describe :response do
      subject { response }

      it { should be_ok }
    end

    describe :assigns do
      describe :languages do
        subject { assigns(:languages) }

        it { should be_a Array }

        context "when persisted no languages" do
          it { should be_empty }
        end

        context "when persisted any languages" do
          let(:n) { rand(10) }

          before do
            n.times { FactoryGirl.create(:language) }
            get :index
          end

          it { should_not be_empty }
        end
      end
    end
  end
end
