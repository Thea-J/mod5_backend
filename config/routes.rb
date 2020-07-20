Rails.application.routes.draw do
namespace :api do
  namespace :v1 do
    resources :businesses
    resources :business_owners

    post "/sign-in", to: "business_owners#sign_in"
    get "/validate", to: "business_owners#validate"
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html