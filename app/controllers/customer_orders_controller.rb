class CustomerOrdersController < ApplicationController
  before_action :authenticate_customer! #solo se puede compra u obtener usuarios estando logeados  

  def create # este metodo es para obtener o crear ordenes de compras para los customers quienes adquieren usuarios
    @user = User.find(params[:user_id]) #se busca al user con el parametro user_id
    @custom_order = CustomerOrder.new(user: @user, customer: current_customer) #se crea una customer_order con los parametros entre parentesis
    if @custom_order.save
        redirect_to users_path, notice: 'Ha Obtenido un usuario'
        
    else
        redirect_to users_path, alert: 'NO ha podido obtener a un usuario'
    end    
  end

  def index
    @custom_orders = current_customer.customer_orders #todas las ordenes(custom_orders) de un customer
  end

  def destroy
    @user = User.find(params[:user_id]) #buscamos primero el objeto o al usuario
    @custom_order = CustomerOrder.where(user: @user, customer: current_customer)
    if @custom_order.first.destroy
       redirect_to users_path, alert: 'El Usuario ha sido eliminado de su selección'
    else
       redirect_to users_path, notice: 'El Usuario ha sido añadido a su selección'
    end             
  
  end

end
