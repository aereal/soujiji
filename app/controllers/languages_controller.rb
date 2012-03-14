class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    head :ok
  end

  def show
    head (Language.where(name: params[:name]).exists? ? :ok : :not_found)
  end
end
