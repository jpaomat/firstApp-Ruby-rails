Rails.application.routes.draw do
  # resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/employees', to: 'employees#index' #cuando va a products busca el controlador products y busca el metodo index
  get '/employees/new', to: 'employees#new'
  post '/employees', to: 'employees#create'
  # get '/employee/:idEmployee', to: 'employees#show', as: 'employee' #este es necesario para cargar la data para editar
  get '/employees/:idEmployee/edit', to: 'employees#edit', as: 'edit_employee'
  patch '/employee/:idEmployee', to: 'employees#update', as: 'employee'#este (as: employee) es necesario para cargar la data para editar
  delete '/employee/:idEmployee', to: 'employees#delete'
end
