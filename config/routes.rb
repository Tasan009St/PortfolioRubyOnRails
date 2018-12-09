Rails.application.routes.draw do
  get 'answers/edit'
  #get 'questions/index'
  #get 'questions/show'
  #get 'questions/new'
  #get 'questions/edit'

  #rootのURLにアクセスがあったときに、questionsコントローラーのindexアクションを実行する。
  #これを指定することで、http://localhost:3000/にアクセスしても、http://localhost:3000/questionsにアクセスしてくれる。
  root 'questions#index'  
  
  #questionsに関連するルートを生成してくれる(#answersに関連するルートを生成してくれるよう追加)
  resources :questions do
    resources :answers
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
