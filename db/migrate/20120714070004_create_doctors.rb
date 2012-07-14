class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :administrator
      t.string :name_surname
      t.string :mail
      t.string :phone
      t.string :user

      t.timestamps
    end
  end
end
