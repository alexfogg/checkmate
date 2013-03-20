class CreateTransactionsTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.decimal :amt
      t.string :to_whom
      t.boolean :deposit
      t.boolean :withdraw
      t.integer :bank_id
      t.timestamps
    end
  end
end
