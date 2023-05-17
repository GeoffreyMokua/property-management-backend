class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :house_id
      t.string :move_in_date
      t.string :lease_term
      t.integer :security_deposit
      t.string :rent_status

      t.timestamps
    end
  end
end
