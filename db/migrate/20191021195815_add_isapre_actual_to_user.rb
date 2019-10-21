class AddIsapreActualToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isapre_actual, :string
  end
end
