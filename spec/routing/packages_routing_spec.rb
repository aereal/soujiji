describe :routes, :packages do
  describe :GET, :index do
    subject { {get: '/lib'} }

    it { should route_to 'packages#index' }
  end
end
