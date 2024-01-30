class CreateRecruits < ActiveRecord::Migration[7.0]
  def change
    create_table :recruits do |t|
      t.string :name
      t.string :email_id
      t.string :contact_no
      t.string :company_name
      t.string :role
      t.string :message

      t.timestamps
    end
  end
end
