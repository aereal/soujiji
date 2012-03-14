describe :routes, :languages do
  describe :GET, :index do
    subject { {get: '/languages'} }

    it { should route_to controller: 'languages', action: 'index' }
  end

  describe :GET, :show do
    subject { {get: ''} }

    let(:lang) { Fabricate(:language) }
  end
end
