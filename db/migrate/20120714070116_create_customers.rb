class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :image
      t.string :phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
