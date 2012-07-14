class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :owner
      t.string :species
      t.string :race
      t.string :gender
      t.string :blood_type
      t.string :sterilized
      t.string :size
      t.string :activity
      t.integer :weight
      t.date :date_of_birth
      t.references :customer

      t.timestamps
    end
    add_index :patients, :customer_id
  end
end
