class AddAboutUReferenceToDeskMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :desk_messages, :about_u, foreign_key: true
  end
end
