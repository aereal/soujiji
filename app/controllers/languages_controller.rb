class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    head :ok
  end

  def show
    @language = Language.find_by_name(params[:name])
    head(!!@language ? :ok : :not_found)
  end
end
