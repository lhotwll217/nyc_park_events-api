class CreateSavedEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_events do |t|
      t.string :categories
      t.string :contact_phone
      t.string :coordinates
      t.string :description
      t.string :end_date
      t.string :end_time
      t.string :guid
      t.string :image
      t.string :link
      t.string :location
      t.string :park_ids
      t.string :park_names
      t.string :start_date
      t.string :start_time
      t.string :title
      t.boolean :attended
      t.belongs :user_id

      t.timestamps
    end
  end
end
