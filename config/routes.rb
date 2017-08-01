Rails.application.routes.draw do
  get 'articles/title'

  get 'articles/content'

  resources :articles
end

