Rails.application.routes.draw do
  root to: 'site#index'
  resources :robby_dates, except: [:new, :edit, :show]
end
