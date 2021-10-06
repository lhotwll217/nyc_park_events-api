class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.belongs_to :saved_event, null: false, foreign_key: true
      t.integer :hours_before

      t.timestamps
    end
  end
end
