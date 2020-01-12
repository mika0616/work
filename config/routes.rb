Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # /topというURLにgetメソッドでリクエストしたときに
  # homeコントローラーにてtopアクションが呼び出される
  get 'top' => 'homes#top'

# 投稿を新規作成
  # /todolists というURLにpostメソッドでリクエストしたときに、
  # todolistsコントローラーにcreateアクションが呼び出される
  post 'todolists' => 'todolists#create'

# 一覧を表示
  get 'todolists' => 'todolists#index'

# 投稿の詳細ページにアクセス
# 名前付きルートを定義　:以下はidを指定
# todolist#showの設定をtodolistとして利用できる
  get 'todolists/:id' =>'todolists#show', as: 'todolist'

# 編集機能を追加
  get 'todolists/:id/edit' =>'todolists#edit', as:'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as:'update_todolist'
end
