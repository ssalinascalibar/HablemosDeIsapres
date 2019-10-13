Rails.application.routes.draw do

  resources :users #ruta REST, es lo mismo que las rutas de arriba, pero con menos codigo
  root to: 'users#new'  
  devise_for :customers


# este bloque de rutas es reemplazado por resources :users
=begin
get 'users', to: 'users#index' #muestra todos los usuarios
get 'users/new' #ruta para crear el nuevo usuario
post 'users', to: 'users#create'   #ruta para recibir los datos y procesarlos
get 'users/:id', to: 'users#show' # controlller users con metodo show
=end



  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
