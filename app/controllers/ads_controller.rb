class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end
  
  def show
    @ad = Ad.find(params[:id])
  end
end
