Rails.application.routes.draw do
  #$ rails g controller Sessions newコマンドで下記ルーティングが作成された
  get 'sessions/new'
  # get 'users/new'
  # get 'user/new'
  # #rails g contoroller pages indesxを入力したら、自動で下記が追加された。
  # get 'pages/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #下記でhelp.html.erbとのルートの設定、test.html.erbも同様
  get 'pages/help'
  # get 'pages/test'
  # Userのcreateアクションに対応するroutesも定義
  
  
  #Sessionの追加、下記３行
  #get     '/login', to: 'sessions#new' はログインするためのフォームを表示するページを取得するだけなのでget（取得）
  get     '/login', to: 'sessions#new'
  #post    '/login', to: 'sessions#create'は新しくメールアドレスやパスワードを送信してもらい、データを元にSessionを作成するから、post（作成）
  post    '/login', to: 'sessions#create'
  #delete  'logout', to: 'sessions#destory'はログアウトでSessionを削除するからdelete（削除）
  delete  'logout', to: 'sessions#destory'
  
  resources :users  
end
