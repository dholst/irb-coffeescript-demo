CoffeeDemo::Application.routes.draw do
  root :to => "donations#index"
  resources :donations
end
