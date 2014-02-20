class GeosController < ApplicationController
  before_action :authenticate_user!
  before_action :require_account!
  before_action :set_geo, only: [:show, :edit, :update, :destroy]
  before_action :correct_geo_coords, only: [:create, :update]

  include Pagination
  layout ->{ params[:iframe] ? 'geo_iframe' : 'application' }
  # layout 'geo_iframe'
  # must wrap routes: https://github.com/plataformatec/devise/issues/2332
  # if you want to use Live
  # include ActionController::Live # problem with authenticate_user!

  def index
    @geos = Geo.where(account_id: current_user.account_id).paginate(pagination_args)
  end

  def show
    render :edit
  end

  def new
    sse_channel = params[:sse_channel]
    @geo = Geo.new(account_id: current_user.account_id, sse_channel: sse_channel)
  end

  def edit
  end

  def create
    @geo = Geo.new(geo_params)
    # sse_channel used to link a notification to a geo created in an iframe
    if params[:sse_channel].present?
      @geo.sse_channel = params[:sse_channel].to_s
    end
    @geo.account = current_user.account
    if @geo.save!
      redirect_to @geo, notice: 'Geo was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @geo.update!(geo_params)
      render action: 'edit', notice: 'Geo was successfully updated.'
    else
      render action: 'edit', notice: 'There was a problem with the update'
    end
  end

  def destroy
    @geo.destroy
    redirect_to geos_url, notice: 'Geo was successfully destroyed.'
  end


  private

  def set_geo
    @geo = Geo.find(params[:id])
  end

  def geo_params
    permitted = params.require(:geo)
    permitted.permit(:geojson).permit! #nested structure
    permitted.permit! # FIXME: why do we have to permit everything?
  end

  # jQuery post and rack params are not argreeing with each other
  # so we need to force the coordinates to be an array
  # or the geojson map display won't be work
  def correct_geo_coords
    coords = params.seek :geo, :geojson, :geometry, :coordinates
    if coords
      array = GeosHelper.geo_coords_to_array(coords)
      params[:geo][:geojson][:geometry][:coordinates] = array
    end
  end
end
