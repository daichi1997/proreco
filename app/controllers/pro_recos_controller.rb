class ProRecosController < ApplicationController
  def index
    @pro_recos = ProReco.all  # インデックスページ用にすべてのレコードを取得
  end

  def new
    @pro_reco = ProReco.new
  end

  def create
    @pro_reco = ProReco.new(pro_reco_params)
    if @pro_reco.save
      redirect_to root_path, notice: 'Pro reco was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pro_reco_params
    params.require(:pro_reco).permit(:title, :content,:image).merge(user: current_user)
  end
end