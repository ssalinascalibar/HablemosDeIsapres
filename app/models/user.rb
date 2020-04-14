class User < ApplicationRecord
  
  has_many :isapres # un usuario busca muchas isapres
  
  has_many :customer_orders
  has_many :customers, through: :customer_orders

  belongs_to :city # usuario pertenece a 1 ciudad, esto permite mostrar el string de la ciudad en la vista de index users

  def check_customer_order(user)
    CustomerOrder.where(user: self, customer: customers).exists? #este metodo sirve para oculta o mostrar los botones agregar o no a mi lista de index users
    #tambien busca si se encuentra una orden creada dentro del modelo CustomOrder
  end

end
