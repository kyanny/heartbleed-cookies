HeartbleedCookies::Application.routes.draw do
  resource :heartbleed, only: [:index]
  root "heartbleed#index"
end
