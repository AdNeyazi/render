class AddAboutUReferenceToCommitteeDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :committee_details, :about_u, foreign_key: true
  end
end
