class TenantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    skip_before_action :authorize, only: [:create]
    def index 
    tenants = Tenant.all
    render json: tenants, status: :ok
    end
    
    def show
        tenant = Tenant.find(params[:id])
    render json: tenant, status: :ok
    end
    
    def create
    tenant = Tenant.create!(tenant_params)
    render json: tenant, status: :created
    end
    
    def destroy
    tenant = Tenant.find(params[:id])
    tenant.destroy
    render json: {message: "delete successfully"}, status: :ok
    end
    
    def update
    tenant = Tenant.find(params[:id])
    tenant.update(tenant_params)
    render json: tenant,  status: :ok
    end
    
    private 
    
    
    def record_not_found
    render json: {message: "Tenant not found"}, status: :not_found
    end
    def record_invalid invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
    def tenant_params
    params.permit(:first_name, :last_name, :email, :phone_number, :house_id, :move_in_date, :lease_term, :security_deposit, :rent_status, :password)
    end

end
