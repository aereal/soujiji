describe :routes, :packages do
  let(:package_name) { Rack::Utils.escape Fabricate(:package).name }

  describe :GET, :index do
    subject { {get: '/lib'} }

    it { should route_to 'packages#index' }
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
end
