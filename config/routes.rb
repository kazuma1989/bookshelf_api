Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/books', to: 'books#index'
    end
  end
end
