Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # /topというURLにgetメソッドでリクエストしたときに
  # homeコントローラーにてtopアクションが呼び出される
  get 'top' => 'homes#top'
  
  # /todolists というURLにpostメソッドでリクエストしたときに、
  # todolistsコントローラーにcreateアクションが呼び出される
  post 'todolists' => 'todolists#create'

  get 'todolists' => 'todolists#index'

# 名前付きルートを定義　:以下はidを指定
# todolist#showの設定をtodolistとして利用できる
  get 'todolists/:id' =>'todolists#show', as: 'todolist'
end
