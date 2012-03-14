class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
  end

  def create
  end

  def show
    @package = Package.find_by_name(Rack::Utils.unescape(params[:name]))
    head @package ? :ok : :not_found
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
