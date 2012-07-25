class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.string :name
      t.references :patients
      t.references :customers
      t.string :phone
      t.string :address
      t.date :date

      t.timestamps
    end
    add_index :vaccines, :patients_id
    add_index :vaccines, :customers_id
  end
end
