class CreateDeskMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :desk_messages do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
