class CreateFundAppeals < ActiveRecord::Migration[7.0]
  def change
    create_table :fund_appeals do |t|
      t.string :title
      t.text :content
      t.string :beneficiary_name
      t.string :bank_name
      t.string :bank_address
      t.string :account_number
      t.string :IFSC_code
      t.string :name
      t.string :email
      t.string :mobile_no

      t.timestamps
    end
  end
end
