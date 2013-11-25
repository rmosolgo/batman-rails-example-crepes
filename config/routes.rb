Creperie::Application.routes.draw do

  get "(*redirect_path)", to: "batman#index", constraints: lambda { |request| request.format == "text/html" }
  resources :crepes do
    resources :toppings
  end
  resources :ingredients
end
