class SearchController < ApplicationController
  def index
    @house = params[:house]
    @members = HarryPotterApi.new.parse_phoenix
    @members.select! do |member|
      member[:house] == params[:house]
    end
  end
end
