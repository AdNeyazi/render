class CreateMessageHeads < ActiveRecord::Migration[7.0]
  def change
    create_table :message_heads do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.string :name
      t.string :department
      t.string :post
      t.string :university

      t.timestamps
    end
  end
end
