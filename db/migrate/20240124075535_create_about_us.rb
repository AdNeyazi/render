class CreateAboutUs < ActiveRecord::Migration[7.0]
  def change
    create_table :about_us do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
