class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.boolean :email_confirmed
      t.string :confirm_token

      t.timestamps
    end
  end
end
