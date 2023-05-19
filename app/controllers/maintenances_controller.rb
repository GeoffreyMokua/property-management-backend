class MaintenancesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
   
    def index 
    maintenance = Maintenance.all
    render json: maintenance, status: :ok
    end
    
    def show
        maintenance = Maintenance.find(params[:id])
    render json: maintenance, status: :ok
    end
    def create
        maintenance = Maintenance.create(maintenance_params)
     render json: maintenance, status: :created
    end

    def destroy
        maintenance = Maintenance.find(params[:id])
        maintenance.destroy
        render json: {message: "delete successfully"}, status: :ok
        end

  
    private

    def maintenance_params
   params.permit(:house_id, :tenant_id, :date_requested, :date_completed, :description)
    end
   
    def record_not_found
        render json: {message: "Maintenance not found"}, status: :not_found
        end
        def record_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end



end
