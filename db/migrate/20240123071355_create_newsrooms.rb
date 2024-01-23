class CreateNewsrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :newsrooms do |t|
      t.string :title
      t.string :event_image
      t.text :content
      t.date :post_date

      t.timestamps
    end
  end
end
