Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    Rails.application.routes.default_url_options[:host] = 'localhost:3000'
  end

  
  # customer side routes
  namespace :api do
    namespace :v1 do

      resources :products, only: [:index] 

    end
  end

end
