Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get  '/signup',  to: 'users#new'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #get 'users/new'
  #get 'tops/show'
  #get 'answers/edit'
  #get 'questions/index'
  #get 'questions/show'
  #get 'questions/new'
  #get 'questions/edit'

  #rootのURLにアクセスがあったときに、questionsコントローラーのindexアクションを実行する。
  #これを指定することで、http://localhost:3000/にアクセスしても、http://localhost:3000/questionsにアクセスしてくれる。
  #root 'questions#index'  
  root 'tops#show' 

  #questionsに関連するルートを生成してくれる(#answersに関連するルートを生成してくれるよう追加)
  resources :questions do
    resources :answers
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
