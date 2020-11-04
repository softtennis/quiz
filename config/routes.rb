Rails.application.routes.draw do
  root to: 'modes#index'
  resources :modes, only: [:index, :new]
  resources :normals, only: [:index, :new] do
    resources :questions, only:[:index]
  # ネストさせることで、"ノーマルモード内の選択画面に対しての問題"という
  # 親子関係を表現したパスが、選択された問題文に跳ぶための
  # リクエストのパスになる感じ？　
  # そして、モデルと結びついている別モデルのid情報が送れるようになるぽい。
  # by Ruby on Rails（PicTweet）
  # 〜ツイートにコメントを投稿しよう〜　ネストの記事より
    resources :choices, only:[:index]
  end    
  resources :hards, only: [:index, :new] do
    resources :questions, only:[:index]
    resources :choices, only:[:index]
  end
end