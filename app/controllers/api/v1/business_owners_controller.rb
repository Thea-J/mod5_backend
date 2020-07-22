class Api::V1::BusinessOwnersController < ApplicationController
    #All data is rendered in json format
    before_action :find_business_owner, only: [:show, :edit, :update, :destroy]
    # skip_before_filter :verify_authenticity_token, only: [:sign_in]

    #Renders an array of all the business owner objects to URL:'localhost:3000/api/v1/business_owners'
    #GET request to 'localhost:3000/api/v1/business_owners': Retrieves the business owners array OR errror content 
    def index
        business_owner = BusinessOwner.all 
        render json: business_owner
    end

    #Use AR #find method & params to find a business owner object by the id that is passed in the URL
    #GET request to 'localhost:3000/api/v1/business_owners/:id': Retrieves the business owner object with that id OR errror content 
    def show
        business_owner = @business_owner
        if business_owner
            render json: business_owner, except: [:created_at, :updated_at]
        else
            # render json: business_owner.errors.full_messages
            render json: {error: "Business owner with this id is not found"}, status: 400
        end
    end

    #Renders the create_business_owner form to URL:'localhost:3000/api/v1/business_owners/new'
    #GET request to 'localhost:3000/api/v1/business_owners/new': Retrieves the create_business_owner form
    def new
        business_owner = BusinessOwner.new
    end

    #Creates a new Business owner object using the values submitted by the user from the create_business_owner form (stored in the business_owner_params hash)
    #Check if the new Business owner object is valid: If so redirect to the new instances show page, 
    #Otherwise redirect back to the form?????????????????
    #POST request to 'localhost:3000/api/v1/business_owners': Sends data from the create_business_owner form to the Rails model to create a new business owner object
    def create
        business_owner = BusinessOwner.create(business_owner_params)
        # byebug
        if business_owner.valid?
           render json: {owner: business_owner, token: generate_token({id: business_owner.id})}
        else 
            render json: {error: "There was an error creating a new business owner"}, status: 400
        end
    end

    #Renders the edit_business_owner form to URL:'localhost:3000/api/v1/business_owners/:id/edit'
    #Use AR #find method & params to find a business owner object by the id that is passed in the URL
    #GET request to 'localhost:3000/api/v1/business_owners/:id/edit': Retrieves the edit_business_owner form  
    def edit
        business_owner = @business_owner
        if business_owner
            # render the edit_business form
        else
            render json: {error: "Business owner with this id is not found"}, status: 400
        end
    end

    #Use AR method #find & params to find a business owner object by the id that is passed in the URL
    #Use AR method #update & business_params hash to pass in the parameters from the edit_business_owner form to update an existing business owner object
    #PATCH request to 'localhost:3000/api/v1/business_owners/:id': Sends data from the edit_business_owner form to the Rails model to update the business owner object
    def update
        business_owner = @business_owner
        business_owner.update(business_owner_params)
        if business_owner.valid?
            render json: business_owner, except: [:created_at, :updated_at]
        else
            render json: {error: "There was an error editing this business owner"}, status: 400
        end
    end

    #Use AR method #find & params to find a business owner object by the id that is passed in the URL
    #Use AR method #destroy to delete the business owner object from the database
    #DELETE request to 'localhost:3000/api/v1/business_owners/:id': Deletes a business owner object from the database
    def destroy
        business_owner = @business_owner
        if business_owner
           business_owner.destroy()
            #Redirect to the homepage
        else
            render json: {error: "Business owner with this id is not found"}, status: 400
        end
    end

    #Try an find a business owner with the username sent in the params hash
    #If we can find them, authenticate the business owner with the password we've been given
    #If it was successful, log them in, Otherwise send back an authentication error
    def sign_in
        business_owner = BusinessOwner.find_by(username: params[:username])
        # byebug
        if business_owner && business_owner.authenticate(params[:password])
           render json: {owner: business_owner, token: generate_token({id: business_owner.id})}
        else 
            render json: {error: "Invalid Credentials"}, status: 400
        end
    end

    #Decode the token that’s been sent as the authorization header & get the id of the logged in business owner
    #Use that id to find the logged-in user 
    #Respond with the username of that user & generate a new token from their id
    #Otherwise send back an authentication error
    def validate
        id = decode_token 
        business_owner = BusinessOwner.find_by(id: id)
        # byebug
        if business_owner 
            business_owner.password_digest = nil #Ask why this works????
           render json: business_owner, except: [:created_at, :updated_at]
        else 
            render json: {error: "Cant find a business owner with that id OR decode the JWT token"}, status: 400
        end
    end

    private
    def business_owner_params
         params.require(:business_owner).permit!
     end
    
    def find_business_owner
        @business_owner = BusinessOwner.find(params[:id])
    end 
end
