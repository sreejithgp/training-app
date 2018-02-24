Rails.application.routes.draw do

  namespace :api do
    api_version(module: 'v1', path: { value: 'v1' }, default: true) do
      post 'login' => 'user_sessions#login'
    end
  end
end
