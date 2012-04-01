describe :routes, :languages do
  describe :GET, :index do
    subject { {get: '/languages'} }

    it { should route_to controller: 'languages', action: 'index' }
  end

  describe :GET, :show do
    subject { {get: "/languages/#{lang.slug}"} }

    let(:lang) { FactoryGirl.create(:language) }

    it { should route_to controller: 'languages', action: 'show', id: lang.slug }
  end
end
