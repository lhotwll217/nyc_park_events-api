class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :categories
      t.string :contact_phone
      t.decimal :latitude
      t.decimal :longitude 
      t.text :description
      t.string :end_date
      t.string :end_time
      t.string :guide
      t.string :image
      t.string :link
      t.string :location
      t.string :park_ids
      t.string :park_names
      t.string :start_date
      t.string :start_time
      t.string :title
     

      t.timestamps
    end
  end
end
