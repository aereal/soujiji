describe :routes, :libraries do
  let(:library) { FactoryGirl.create(:library) }

  describe :GET, :index do
    subject { {get: libraries_path} }

    it { should route_to 'libraries#index' }
  end

  describe :GET, :new do
    subject { {get: new_library_path} }

    it { should route_to 'libraries#new' }
  end

  describe :POST, :create do
    subject { {post: libraries_path} }

    it { should route_to 'libraries#create' }
  end

  describe :GET, :show do
    subject { {get: library_path(library)} }

    it { should route_to controller: 'libraries', action: 'show', id: library.slug }
  end

  describe :GET, :edit do
    subject { {get: edit_library_path(library)} }

    it { should route_to controller: 'libraries', action: 'edit', id: library.slug }
  end

  describe :PUT, :update do
    subject { {put: library_path(library)} }

    it { should route_to controller: 'libraries', action: 'update', id: library.slug }
  end

  describe :DELETE, :destroy do
    subject { {delete: library_path(library)} }

    it { should route_to controller: 'libraries', action: 'destroy', id: library.slug }
  end
end
