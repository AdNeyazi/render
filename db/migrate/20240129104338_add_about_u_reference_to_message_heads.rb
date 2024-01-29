class AddAboutUReferenceToMessageHeads < ActiveRecord::Migration[7.0]
  def change
    add_reference :message_heads, :about_u, foreign_key: true
  end
end
