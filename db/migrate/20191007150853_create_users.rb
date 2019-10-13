class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :rut
      t.integer :age
      t.integer :phone
      t.string :email
      t.string :gender
      t.boolean :salary
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
