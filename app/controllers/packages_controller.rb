class PackagesController < ApplicationController
  before_filter :find_package, only: [:show, :edit, :update, :destroy]

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
    head @package ? :ok : :not_found
  end

  def edit
    head @package ? :ok : :not_found
  end

  def update
    if @package.update_attributes(params[:package])
      redirect_to action: :show, name: @package.name
    end
  end

  def destroy
    if @package.destroy
      redirect_to action: :index
    end
  end

  private

    def find_package
      @package = Package.find_by_name(Rack::Utils.unescape(params[:name]))
    end
end
