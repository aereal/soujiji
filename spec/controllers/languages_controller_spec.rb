describe LanguagesController do
  describe :GET, :show do
    before { get :show, name: language.name }

    describe :response do
      subject { response }

      context "when given unknown Language" do
        let(:language) { Fabricate.build(:language) }

        it { should be_not_found }
      end

      context "when given persisted Language" do
        let(:language) { Fabricate(:language) }

        it { should be_ok }
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
            n.times { Fabricate(:language) }
            get :index
          end

          it { should_not be_empty }
        end
      end
    end
  end
end
