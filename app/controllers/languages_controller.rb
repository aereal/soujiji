class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    head :ok
  end
end
