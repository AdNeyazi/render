class CreateCommitteeDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :committee_details do |t|
      t.string :name
      t.string :contact_details
      t.string :telephone
      t.text :vision
      t.text :mission

      t.timestamps
    end
  end
end
