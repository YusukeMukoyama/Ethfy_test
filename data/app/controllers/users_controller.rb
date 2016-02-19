class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def index
    @user = current_user
    user_id = @user.id
    @amount = @user.wallet.amount
    @transactions = Transaction.where(user_id: user_id)
  end

  def wallet
    @user = current_user
    @address = @user.wallet.address
    @qr = Wallet.toqr(@address)
    # @qr_png = Wallet.toqr(@address)
  end

  def transfer
  end

  def transfer_done
    @user = current_user
    @user_id = @user.id
    @wallet_id = @user.wallet.id
    @wallet_address = @user.wallet.address
    reciever_id = params[:wallet]
    send_amount = params[:amount].to_f
    
    Transaction.new
    Wallet.subtract(@wallet_id, send_amount)
    Transaction.add_log(@user_id, @wallet_id, reciever_id, @wallet_address, send_amount)
    flash[:notice] = "成功"
    redirect_to '/'
  end

  def destroy
  end
end
