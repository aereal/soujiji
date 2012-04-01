describe LibrariesController do
  describe :DELETE, :destroy do
    before { post :destroy, name: library.name }

    let(:library) { FactoryGirl.create(:library) }

    describe :response do
      subject { response }

      context "when successfully updated" do
        it { should redirect_to action: :index }
      end
    end

    describe :assigns, :library do
      subject { assigns(:library) }

      it { should be_a Library }

      it { should be_destroyed }
    end
  end

  describe :PUT, :update do
    before { post :update, name: library.name, library: library_attrs }

    let(:library_attrs) { library.attributes }
    let(:library) { FactoryGirl.create(:library) }

    describe :response do
      subject { response }

      context "when successfully updated" do
        it { should redirect_to action: :show, name: library.name }
      end
    end

    describe :assigns, :library do
      subject { assigns(:library) }

      it { should be_a Library }

      it { should be_persisted }
    end
  end

  describe :GET, :edit do
    let(:library_name) { Rack::Utils.escape library.name }

    before { get :edit, name: library_name }

    describe :response do
      subject { response }

      context "when given missing library" do
        let(:library) { FactoryGirl.build(:library) }

        it { should be_not_found }
      end

      context "when given persisted library" do
        let(:library) { FactoryGirl.create(:library) }

        it { should be_ok }
      end
    end

    describe :assigns do
      describe :library do
        subject { assigns(:library) }

        context "when given persisted library" do
          let(:library) { FactoryGirl.create(:library) }

          it { should eq library }
        end
      end
    end
  end

  describe :GET, :show do
    let(:library_name) { Rack::Utils.escape library.name }

    before { get :show, name: library_name }

    describe :response do
      subject { response }

      context "when given missing library" do
        let(:library) { FactoryGirl.build(:library) }

        it { should be_not_found }
      end

      context "when given persisted library" do
        let(:library) { FactoryGirl.create(:library) }

        it { should be_ok }
      end
    end

    describe :assigns do
      describe :library do
        subject { assigns(:library) }

        context "when given persisted library" do
          let(:library) { FactoryGirl.create(:library) }

          it { should eq library }
        end
      end
    end
  end

  describe :POST, :create do
    before { post :create, library: library_attrs }

    let(:library_attrs) { library.attributes }
    let(:library) { FactoryGirl.create(:library) }

    describe :response do
      subject { response }

      context "when successfully created" do
        it { should redirect_to action: :show, name: library.name }
      end
    end

    describe :assigns, :library do
      subject { assigns(:library) }

      it { should be_a Library }

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
      describe :library do
        subject { assigns(:library) }

        it { should be_a_new Library }
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
      describe :libraries do
        subject { assigns(:libraries) }

        it { should be_a Array }

        context "when persisted no libraries" do
          it { should be_empty }
        end

        context "when persisted any libraries" do
          let(:n) { rand(10) }

          before do
            n.times { FactoryGirl.create(:library) }
            get :index
          end

          it { should_not be_empty }
        end
      end
    end
  end
end
