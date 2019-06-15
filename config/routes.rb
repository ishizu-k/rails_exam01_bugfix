Rails.application.routes.draw do
  #root to: 'blogs#index'

  # ErrorCause: Routing Error
  # FixReason: Fix Typo (blog --> blogs) 命名規約によりコントローラ名は複数形にする。

  resources :blog do
    resources :comments, only: [:create, :destroy]
  end
end
