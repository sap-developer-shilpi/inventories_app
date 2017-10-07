class LocationsController < ApplicationController
   
   def index
   end

   def show
     @location = Location.find(params[:id])
   end
   
   def new
    @location = Location.new
   end
   def create
     @location = Location.new(location_params)
     if @location.save
      flash[:success]="new location created"
      redirect_to location_path(@location)
     else
      render 'new'
     end
   end
   
   private
   
   def location_params
    params.require(:location).permit(:loc_code, :loc_name, :primany_representative, :phone, :email)
   end
end 
