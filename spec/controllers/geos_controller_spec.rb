require 'spec_helper'

describe GeosController do

  context 'not logged in' do
    it 'requires authentication' do
      get :index
      response.should be_redirect
    end
  end

  context "paginated" do
    login_user
    it_behaves_like "paginated"
  end

  context 'logged in' do
    login_user(:admin)

    describe "GET new" do
      it "should assign account_id" do
        get :new
        response.should be_success
        assigns(:geo).account_id.should_not be_nil
      end

      it "doesn't respond to json" do
        get :new, format: :json
        response.should_not be_success
      end
    end

    describe "POST create" do
      it "saves a geo model" do
        notification = create(:notification)
        post :create, geo:
          { geojson: {properties: "", geometry: "", type: ""},}
        response.should be_redirect
      end

      def new_valid_attributes
        { geo:
          { geojson: {properties: "", geometry: "", type: ""},
            sse_channel: 'abcd123',
           }}
      end

      it "can create a geo from the map_editor" do
        post :create, new_valid_attributes.merge(format: :json)
        response.should be_redirect
        assigns(:geo).account.should_not be_nil
        assigns(:geo).geojson.should_not be_nil
      end
      # TODO: rescue JSON.parse error
    end

    describe "GET edit" do
      render_views

      it "renders for an iframe with json on it to build a map from" do
        geo = build_stubbed(:geo)
        expect(Geo).to receive(:find).and_return(geo)
        get :edit, id: geo.id, iframe: true
        response.should be_success
        response.should render_template( :edit )
        response.should render_template( layout: :geo_iframe)
        # one for html, one for json
        # response.should render_template( partial: '_map', count: 2)
      end
    end
  end
end
