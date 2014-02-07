Kintest3::Application.routes.draw do

  root to: 'applications#index'
  
  resources :applications do
    resources :requests do
      resources :bodies do
        resources :h_params
        resources :b_params
      end
      resources :headers do
        resources :h_params
        resources :b_params
      end
    end
  end

end
