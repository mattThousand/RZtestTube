Kintest3::Application.routes.draw do

  root to: 'applications#index'
  
  resources :applications do
    resources :requests
  end

end
