class AddAssociationsToAboutU < ActiveRecord::Migration[7.0]
  def change
    add_reference :about_us, :message_head, foreign_key: true
    add_reference :about_us, :committee_detail, foreign_key: true
    add_reference :about_us, :president_message, foreign_key: true
    add_reference :about_us, :desk_message, foreign_key: true
  end
end
