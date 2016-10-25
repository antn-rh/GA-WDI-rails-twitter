Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get 'tweets/' => 'tweets#index'
  get 'tweets/new' => 'tweets#new', as: :new_tweet
  get 'tweets/:id' => 'tweets#show', as: :tweet
  post 'tweets/' => 'tweets#create'
  get 'tweets/:id/edit' => 'tweets#edit', as: :edit_tweet
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'

end
