class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :house_type
      t.string :status
      t.integer :no_of_bedrooms
      t.integer :rent
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
