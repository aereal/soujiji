class LibrariesController < ApplicationController
  before_filter :find_library, only: [:show, :edit, :update, :destroy]

  def index
    @libraries = Library.all
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.new(params[:library])
    if @library.save
      redirect_to action: :show, name: @library.name
    end
  end

  def show
    head @library ? :ok : :not_found
  end

  def edit
    head @library ? :ok : :not_found
  end

  def update
    if @library.update_attributes(params[:library])
      redirect_to action: :show, name: @library.name
    end
  end

  def destroy
    if @library.destroy
      redirect_to action: :index
    end
  end

  private

    def find_library
      @library = Library.find_by_name(Rack::Utils.unescape(params[:name]))
    end
end
