Rails.application.routes.draw do
  root 'front_end_app#show'

  post 'subscribe', to: 'subscriber#subscribe'
  get 'confirm', to: 'subscriber#confirm'
end
