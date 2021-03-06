Rails.application.routes.draw do
  # => homes controller
  root :to => 'homes#top' #アプリケーショントップ画面をルートパスに設定

  # => books controller
  resources :books, :except => :new

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
