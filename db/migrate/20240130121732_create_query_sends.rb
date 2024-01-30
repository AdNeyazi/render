class CreateQuerySends < ActiveRecord::Migration[7.0]
  def change
    create_table :query_sends do |t|
      t.string :name
      t.string :email
      t.string :contact_no
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
