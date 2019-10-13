class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
