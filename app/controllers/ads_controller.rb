class AdsController < ApplicationController
  http_basic_authenticate_with :name => "sergio", :password => "123", :only => [:edit, :update, :destroy]
  
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
  
  def edit
    @ad = Ad.find(params[:id])    
  end
  
  def update
    @ad = Ad.find(params[:id])
    @ad.update_attributes(params[:ad])
    redirect_to @ad, notice: "Ad was successfully updated"
  end
  
  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    
    redirect_to ads_url
  end
end
