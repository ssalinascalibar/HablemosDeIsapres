class RemoveSalaryFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :salary, :boolean
  end
end
