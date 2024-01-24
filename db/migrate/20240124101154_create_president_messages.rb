class CreatePresidentMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :president_messages do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.string :name
      t.string :post

      t.timestamps
    end
  end
end
