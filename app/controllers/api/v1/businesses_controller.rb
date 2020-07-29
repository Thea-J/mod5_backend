class Api::V1::BusinessesController < ApplicationController
    before_action :find_business_object, only: [:show, :edit, :update, :destroy]

    #All data is rendered in json format

    #Renders an array of all the business objects to URL:'localhost:3000/api/v1/businesses'
    #GET request to 'localhost:3000/api/v1/businesses': Retrieves the businesses array OR error content 
    def index
        businesses = Business.all 
        business_sectors_obj = Business.sectors_obj

        # byebug
        business_obj = [businesses, business_sectors_obj]
        render json: business_obj
        # render json: businesses
    end

    #Use AR #find method & params to find a business object by the id that is passed in the URL
    #GET request to 'localhost:3000/api/v1/businesses/:id': Retrieves the businesses object with that id OR error content 
    def show
        # byebug
        business = @business #DRY ???
        if business
            render json: business, except: [:created_at, :updated_at]
        else
            # render json: business.errors.full_messages
            render json: {error: "Business with this id is not found"}, status: 400
        end
    end

    #Renders the add_business form to URL:'localhost:3000/api/v1/businesses/new'
    #GET request to 'localhost:3000/api/v1/businesses/new': Retrieves the new_business form
    def new
        business = Business.new
    end

    #Creates a new Business object using the values submitted by the user from the new_business form (stored in the business_params hash)
    #Check if the new Business object is valid: If so redirect to the new instances show page, 
    #Otherwise redirect back to the form?????????????????
    #POST request to 'localhost:3000/api/v1/businesses': Sends data from the new_business form to the Rails model to create a new business object
    def create
        business = Business.create(business_params)
        #  byebug
        if business.valid?
           render json: business, except: [:created_at, :updated_at]
        else 
           render json: {error: "There was an error adding a new Business"}, status: 400
        end
    end

    #Renders the edit_business form to URL:'localhost:3000/api/v1/businesses/:id/edit'
    #Use AR #find method & params to find a business object by the id that is passed in the URL
    #GET request to 'localhost:3000/api/v1/businesses/:id/edit': Retrieves the edit_business form  
    def edit
        business = @business
        if business
            # render the edit_business form
        else
            render json: {error: "Business with this id is not found"}, status: 400
        end
    end

    #Use AR method #find & params to find a business object by the id that is passed in the URL
    #Use AR method #update & business_params hash to pass in the parameters from the edit_business form to update an existing business object
    #PATCH request to 'localhost:3000/api/v1/businesses/:id': Sends data from the edit_business form to the Rails model to update the business object
    def update
        business = @business
        business.update(business_params)
        if business.valid?
            render json: business, except: [:created_at, :updated_at]
        else
            render json: {error: "There was an error editing this business owner"}, status: 400
        end
    end

    #Use AR method #find & params to find a business object by the id that is passed in the URL
    #Use AR method #destroy to delete the business object from the database
    #DELETE request to 'localhost:3000/api/v1/businesses/:id': Deletes a business object from the database
    def destroy
        business = @business
        if business
            business.destroy()
            #Redirect to the homepage
        else
            render json: {error: "Business with this id is not found"}, status: 400
        end
    end

    private
    def business_params
        params.require(:business).permit!
    end

    def find_business_object
        @business = Business.find(params[:id])
        # byebug
    end 
end
