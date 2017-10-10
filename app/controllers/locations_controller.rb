class LocationsController < ApplicationController
   
   def index
    @locations = Location.paginate(page: params[:page], per_page: 3)
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
   
   def edit
    @location = Location.find(params[:id])
   end
   
   def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      flash[:success] = "Information updated"
      redirect_to locations_path
    else
      render 'edit'
    end
   end
   
   def destroy
     @location = Location.find(params[:id])
     @location.destroy
    flash[:danger]= "location and the corresponding address deleted"
    redirect_to locations_path
   end
   
   private
   
   def location_params
    params.require(:location).permit(:loc_code, :loc_name, :primary_representative, :phone, :email, address_attributes: [ :id, :building_num, :street, :pin_code, :city])
   end
end 
