class AuthController < ApplicationController
    skip_before_action :authorize, only:[:create]
    def create
        tenant = Tenant.find_by(email: params[:email])
        if tenant&.authenticate(params[:password])
            token = encode_token(tenant_id: tenant.id)
            render json: { tenant: TenantSerializer.new(tenant), jwt: token }, status: :ok
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end
end
