describe PackagesController do
  describe :GET, :new do
    before { get :new }

    describe :response do
      subject { response }

      it { should be_ok }
    end

    describe :assigns do
      describe :package do
        subject { assigns(:package) }

        it { should be_a_new Package }
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
      describe :packages do
        subject { assigns(:packages) }

        it { should be_a Array }

        context "when persisted no packages" do
          it { should be_empty }
        end

        context "when persisted any packages" do
          let(:n) { rand(10) }

          before do
            n.times { Fabricate(:package) }
            get :index
          end

          it { should_not be_empty }
        end
      end
    end
  end
end
