class UsersController < ApplicationController
    before_action :authenticate_customer!, only: [:index] # antes de entrar al users#index debo autenticarme
    
    def index
        @user = User.all

        @city = City.all        
    end


    def new
        @user = User.new
    end
    
    def create
        # ByeBug, utilizarlo solo para revisar el metodo en consola 
        
        @user = User.new(user_params) #se crea un user a partir de los params que vienen bajo el scope de user
        @user.save #guarda el formulario con los datos del usuario
        redirect_to new_user_path            
    end

    def show
        @user = User.find(params[:id]) # busca un User a partir de este parametro (), find busca en base al :id   
    end

    private
    def user_params #strong params, permite asignación masiva de los parametros señalados bajo el scope :user
        params.require(:user).permit(:name, :last_name, :rut, :age, :phone, :email, :isapre_actual, :gender, :salary, :city_id)            
    end    

end
