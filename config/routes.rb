Rails.application.routes.draw do
    
  get 'customer_orders/create'
  resources :users do #ruta REST, es lo mismo que las rutas de arriba, pero con menos codigo
    resources :customer_orders, only: :create
  end  
  
  devise_for :customers # todas las rutas para devise
  
  devise_scope :customers do # este bloque se agrega para devise, root es users#new pero al autenticar no lleva al users#index, hay 2 root mienstras se esté o no autenticado

    authenticated  do
            root to: 'users#index'
         end

        unauthenticated do
              root 'users#new'
        end

    end
    

# este bloque de rutas es reemplazado por resources :users
=begin
get 'users', to: 'users#index' #muestra todos los usuarios
get 'users/new' #ruta para crear el nuevo usuario
post 'users', to: 'users#create'   #ruta para recibir los datos y procesarlos
get 'users/:id', to: 'users#show' # controlller users con metodo show
=end



  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
