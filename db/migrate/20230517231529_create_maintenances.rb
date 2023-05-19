class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.integer :house_id
      t.integer :tenant_id
      t.string :date_requested
      t.string :date_completed
      t.string :description

      t.timestamps
    end
  end
end
