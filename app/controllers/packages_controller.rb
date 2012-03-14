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
    found = Package.where(name: Rack::Utils.unescape(params[:name])).exists?
    head found ? :ok : :not_found
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
