class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :team_name
      t.string :team_email
      t.string :department
      t.string :university
      t.string :professor_name
      t.string :post
      t.string :phone_no
      t.string :professor_email

      t.timestamps
    end
  end
end
