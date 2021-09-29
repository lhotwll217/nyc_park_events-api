class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :address
      t.string :coordinates
      t.string :first_name

      t.timestamps
    end
  end
end
