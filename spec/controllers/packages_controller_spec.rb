describe PackagesController do
  describe :GET, :edit do
    let(:package_name) { Rack::Utils.escape package.name }

    before { get :edit, name: package_name }

    describe :response do
      subject { response }

      context "when given missing Package" do
        let(:package) { Fabricate.build(:package) }

        it { should be_not_found }
      end

      context "when given persisted Package" do
        let(:package) { Fabricate(:package) }

        it { should be_ok }
      end
    end

    describe :assigns do
      describe :package do
        subject { assigns(:package) }

        context "when given persisted Package" do
          let(:package) { Fabricate(:package) }

          it { should eq package }
        end
      end
    end
  end

  describe :GET, :show do
    let(:package_name) { Rack::Utils.escape package.name }

    before { get :show, name: package_name }

    describe :response do
      subject { response }

      context "when given missing Package" do
        let(:package) { Fabricate.build(:package) }

        it { should be_not_found }
      end

      context "when given persisted Package" do
        let(:package) { Fabricate(:package) }

        it { should be_ok }
      end
    end

    describe :assigns do
      describe :package do
        subject { assigns(:package) }

        context "when given persisted Package" do
          let(:package) { Fabricate(:package) }

          it { should eq package }
        end
      end
    end
  end

  describe :POST, :create do
    before { post :create, package: package_attrs }

    let(:package_attrs) { package.attributes }
    let(:package) { Fabricate(:package) }

    describe :response do
      subject { response }

      context "when successfully created" do
        it { should redirect_to action: :show, name: package.name }
      end
    end

    describe :assigns, :package do
      subject { assigns(:package) }

      it { should be_a Package }

      it { should be_persisted }
    end
  end

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
