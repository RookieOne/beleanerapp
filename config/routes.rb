Beleanerapp::Engine.routes.draw do
  resources :records, only: [:index, :show]
end
