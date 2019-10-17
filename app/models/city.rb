class City < ApplicationRecord
  
  has_many :users # 1 ciudad puede tener muchos usuarios
  
end
