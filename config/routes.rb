Rails.application.routes.draw do
  devise_for :customers

  get 'me' => 'profiles#me'
end
