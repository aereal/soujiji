class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(params[:package])
    if @package.save
      redirect_to action: :show, name: @package.name
    end
  end

  def show
    @package = Package.find_by_name(Rack::Utils.unescape(params[:name]))
    head @package ? :ok : :not_found
  end

  def edit
    @package = Package.find_by_name(Rack::Utils.unescape(params[:name]))
    head @package ? :ok : :not_found
  end

  def update
    @package = Package.find_by_name(Rack::Utils.unescape(params[:name]))
    if @package.update_attributes(params[:package])
      redirect_to action: :show, name: @package.name
    end
  end

  def destroy
  end
end
