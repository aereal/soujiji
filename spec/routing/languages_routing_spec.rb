describe :routes, :languages do
  describe :GET, :index do
    subject { {get: '/languages'} }

    it { should route_to controller: 'languages', action: 'index' }
  end

  describe :GET, :show do
    subject { {get: "/languages/#{escaped_name}"} }

    let(:lang) { Fabricate(:language) }
    let(:escaped_name) { Rack::Utils.escape lang.name }

    it { should route_to controller: 'languages', action: 'show', name: escaped_name }
  end
end
