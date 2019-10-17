class User < ApplicationRecord
  
  has_many :isapres # un usuario busca muchas isapres

  belongs_to :city # usuario pertenece 1 ciudad

end
