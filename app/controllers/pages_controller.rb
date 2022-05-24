class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @stars = Star.all
  end
end
