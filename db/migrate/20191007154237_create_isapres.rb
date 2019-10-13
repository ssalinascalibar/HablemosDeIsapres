class CreateIsapres < ActiveRecord::Migration[5.2]
  def change
    create_table :isapres do |t|
      t.string :isapre
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
