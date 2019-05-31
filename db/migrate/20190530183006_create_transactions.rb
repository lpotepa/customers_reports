class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.decimal :amount

      t.timestamps
    end
  end
end
