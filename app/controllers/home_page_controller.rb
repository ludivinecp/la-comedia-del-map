class HomePageController < ApplicationController
  def index
    @plays = Play.all
  end
end
