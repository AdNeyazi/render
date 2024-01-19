class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :member_name
      t.string :course
      t.string :member_image_url
      t.integer :year_of_passing

      t.timestamps
    end
  end
end
