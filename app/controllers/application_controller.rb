class ApplicationController < ActionController::API
    before_action :authorize
    def encode_token(payload)
      # should store secret in env variable
      JWT.encode(payload, 'my_s3cr3t')
    end
  

    #getting token from auth header 
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_tenant
      if decoded_token
        tenant_id = decoded_token[0]['tenant_id']
        @tenant = Tenant.find(tenant_id)
      end
    end
    

    def logged_in?
      !!current_tenant 
    end
  
    def authorize
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
