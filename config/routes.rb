Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :users do
        collection do
          get :users_list
          get :get_single_user_message
          get :user_all_msg
        end
      end
      resources :messages do
        collection do
          post :create_message
        end
      end
    end
  end
end
