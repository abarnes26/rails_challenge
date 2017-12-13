Rails.application.routes.draw do
  resources :students do
    resources :addresses, only: [:new, :create, :edit, :update, :destroy]
  end

end
