class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :auth_token
      t.string :password_reset_token
      t.datetime :password_reset_sent_at

	  t.references :doctor
	  
      t.timestamps
    end
	
	add_index :users, :doctor_id
	
  end
end

