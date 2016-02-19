class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :wallet, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :reciever
      t.text :sender
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
