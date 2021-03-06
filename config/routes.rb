Rails.application.routes.draw do
  #アプリケーショントップ画面をルートパスに設定
  root :to => 'homes#top'

  # => homes controller
  get 'homes/top', as: 'top'

  # => books controller
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
