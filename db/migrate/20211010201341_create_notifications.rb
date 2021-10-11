class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :type
      t.integer :days_before
      t.belongs_to :saved_event
      t.belongs_to :user

      t.timestamps
    end
  end
end
