describe :routes, :packages do
  describe :GET, :index do
    subject { {get: '/lib'} }

    it { should route_to 'packages#index' }
  end

  describe :POST, :create do
    subject { {post: '/lib'} }

    it { should route_to 'packages#create' }
  end
end
