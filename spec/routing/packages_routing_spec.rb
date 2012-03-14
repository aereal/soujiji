describe :routes, :packages do
  let(:package_name) { Rack::Utils.escape Fabricate(:package).name }

  describe :GET, :index do
    subject { {get: '/lib'} }

    it { should route_to 'packages#index' }
  end

  describe :GET, :new do
    subject { {get: '/lib/_new'} }

    it { should route_to 'packages#new' }
  end

  describe :POST, :create do
    subject { {post: '/lib'} }

    it { should route_to 'packages#create' }
  end

  describe :GET, :show do
    subject { {get: "/lib/#{package_name}"} }

    it { should route_to controller: 'packages', action: 'show', name: package_name }
  end

  describe :GET, :edit do
    subject { {get: "/lib/#{package_name}/_edit"} }

    it { should route_to controller: 'packages', action: 'edit', name: package_name }
  end

  describe :PUT, :update do
    subject { {put: "/lib/#{package_name}"} }

    it { should route_to controller: 'packages', action: 'update', name: package_name }
  end

  describe :DELETE, :destroy do
    subject { {delete: "lib/#{package_name}"} }

    it { should route_to controller: 'packages', action: 'destroy', name: package_name }
  end
end
