Rails.application.routes.draw do
  #rails g contoroller pages indesxを入力したら、自動で下記が追加された。
  get 'pages/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #下記でhelp.html.erbとのルートの設定、test.html.erbも同様
  get 'pages/help'
  get 'pages/test'
end