Rails.application.routes.draw do
  delete 'epayco/plans/:id', to: 'epayco/plans#destroy'

  namespace :epayco do
    get 'pse/getBanks'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
