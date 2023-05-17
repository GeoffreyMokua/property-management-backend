class HousesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
   
    def index 
    house = House.all
    render json: house, status: :ok
    end
    
    def show
        house = House.find(params[:id])
    render json: house, status: :ok
    end
    def create
     house = House.create(house_params)
     render json: house, status: :created
    end

    def update
        house = House.find(params[:id])
        house.update(update_params)
        render json: tenant,  status: :ok
        end
    private

    def house_params
   params.permit(:house_type, :status, :no_of_bedrooms, :rent, :description, :image)
    end
    def update_params
    params.permit(:status,:rent)
    end
    def record_not_found
        render json: {message: "House not found"}, status: :not_found
    end
    def record_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
        
end
