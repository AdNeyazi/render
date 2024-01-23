class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_title
      t.text :description
      t.string :event_location
      t.string :event_type
      t.string :event_image_url

      t.timestamps
    end
  end
end
