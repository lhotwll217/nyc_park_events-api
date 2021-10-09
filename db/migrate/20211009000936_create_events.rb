class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :categories
      t.string :contact_phone
      t.float :latitude
      t.float :longitude 
      t.text :description
      t.datetime :end_date_time
      t.datetime :start_date_time
      t.string :guide
      t.string :image
      t.string :link
      t.string :location
      t.string :park_ids
      t.string :park_names
      t.string :title
     

      t.timestamps
    end
  end
end
