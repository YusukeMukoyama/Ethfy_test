class AddSumToWallets < ActiveRecord::Migration
  def change
    add_column :wallets, :amount, :real
    add_column :wallets, :address, :text
    add_column :wallets, :pubkey, :text
  end
end
