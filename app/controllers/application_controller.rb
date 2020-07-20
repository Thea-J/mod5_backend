class ApplicationController < ActionController::API
    #This method will retrieve my secret from my machine
    # To use this code you must create your own secret on your own machine :)
    # def secret
    #     ENV["SECRET"]
    # end 

    #Generate a JWT token using a secret generated on my machine
    def generate_token(data)
        # JWT.encode(data, secret)
        JWT.encode(data, "thisSecretWillChange")
    end

    def decode_token
        token = request.headers["Authorization"]
        JWT.decode(token, "thisSecretWillChange").first["id"]
    end
end
