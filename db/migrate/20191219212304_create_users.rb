class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firebase_uid
      t.date :birthdate
      t.string :email
      t.string :phone_number
      t.string :location
      t.string :birthplace
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
