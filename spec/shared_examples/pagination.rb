shared_examples 'paginated' do

  describe ":index" do
    # login_user do this in the spec
    it "paginates using params[:per_page]" do
      account = create(:account)
      expect(controller.current_user).
        to receive(:account_id).at_least(1).and_return(account.id)
      create_list(resource_symbol, 3, account: account)
      get :index, {page: 1, per_page: 2}
      expect(assigns(resource_symbol.to_s.pluralize.to_sym).size).to eql(2)
    end

  end

  def resource_symbol
    described_class.name.underscore.chomp('_controller').singularize.to_sym
  end
end
