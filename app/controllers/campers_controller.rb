class CampersController < ApplicationController
  def index
    if params[:campsite_id].nil?
      @title = "All Campers:"
      @campers = Camper.all
    else
      campsite = Campsite.find(params[:campsite_id])
      @campers = campsite.campers
      @title = "Campers bunking in #{campsite.name}"
    end
  end
end
