class User < ApplicationRecord
  
  has_many :isapres # un usuario busca muchas isapres
  
  has_many :customer_orders
  has_many :customers, through: :customer_orders

  belongs_to :city # usuario pertenece a 1 ciudad, esto permite mostrar el string de la ciudad en la vista de index users

end
