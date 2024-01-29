class AddAboutUReferenceToPresidentMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :president_messages, :about_u, foreign_key: true
  end
end
