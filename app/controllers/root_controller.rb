class RootController < ApplicationController
  def index
    @memos = Memo.order(:created_at).reverse
  end

  def memo
    Memo.create!(memo_params)
    redirect_to :index
  end

  private

  def memo_params
    params.require(:memo).permit(:text)
  end
end
