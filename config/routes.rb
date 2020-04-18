Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	devise_for :users

  	# ログイン認証が成功した後、投稿画像の一覧画面が表示されるように設定する。
  	root 'post_images#index'

  	resources :post_images, only: [:new, :create, :index, :show] do
	# resources => ルーティングを一括で自動生成する。
	# only => 生成するルーティングを限定するオプション。
	    resource :favorites, only: [:create, :destroy]
		resource :post_comments, only: [:create, :destroy]
	end
end