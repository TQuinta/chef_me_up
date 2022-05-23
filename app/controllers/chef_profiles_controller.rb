class ChefProfilesController < ApplicationController

  def index
    @profiles = ChefProfile.all
  end
end
