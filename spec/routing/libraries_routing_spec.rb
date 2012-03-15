describe :routes, :libraries do
  let(:library_name) { Rack::Utils.escape Fabricate(:library).name }

  describe :GET, :index do
    subject { {get: '/lib'} }

    it { should route_to 'libraries#index' }
  end

  describe :GET, :new do
    subject { {get: '/lib/_new'} }

    it { should route_to 'libraries#new' }
  end

  describe :POST, :create do
    subject { {post: '/lib'} }

    it { should route_to 'libraries#create' }
  end

  describe :GET, :show do
    subject { {get: "/lib/#{library_name}"} }

    it { should route_to controller: 'libraries', action: 'show', name: library_name }
  end

  describe :GET, :edit do
    subject { {get: "/lib/#{library_name}/_edit"} }

    it { should route_to controller: 'libraries', action: 'edit', name: library_name }
  end

  describe :PUT, :update do
    subject { {put: "/lib/#{library_name}"} }

    it { should route_to controller: 'libraries', action: 'update', name: library_name }
  end

  describe :DELETE, :destroy do
    subject { {delete: "lib/#{library_name}"} }

    it { should route_to controller: 'libraries', action: 'destroy', name: library_name }
  end
end
