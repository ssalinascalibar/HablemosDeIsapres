class User < ApplicationRecord
  
  has_many :isapres # un usuario busca muchas isapres
  
  has_many :customer_orders
  has_many :customers, through: :customer_orders

  #belongs_to :city # usurio pertenece 1 ciudad

end
