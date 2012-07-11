class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end
  
  def show
    @ad = Ad.find(params[:id])
  end
  
  def new
    @ad = Ad.new
  end
  
  def create
    @ad = Ad.new(params[:ad])
    @ad.save
    redirect_to @ad, notice: "Ad was successfully created."
  end
end
