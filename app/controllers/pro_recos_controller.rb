class ProRecosController < ApplicationController
  before_action :set_pro_reco, only: [:show, :edit, :update, :destroy]
  before_action :authorize_pro_reco, only: [:edit, :update, :destroy]

  def index
    @pro_recos = ProReco.order(created_at: :desc).page(params[:page]).per(10)
  end

  def new
    @pro_reco = ProReco.new
  end

  def create
    @pro_reco = current_user.pro_recos.build(pro_reco_params)
    if @pro_reco.save
      redirect_to @pro_reco, notice: 'プロレコが正常に作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @pro_reco.update(pro_reco_params)
      redirect_to @pro_reco, notice: 'プロレコが正常に更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pro_reco.destroy
    redirect_to pro_recos_path, notice: 'プロレコが正常に削除されました。'
  end

  private

  def set_pro_reco
    @pro_reco = ProReco.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to pro_recos_path, alert: '指定されたプロレコは見つかりませんでした。'
  end

  def authorize_pro_reco
    unless @pro_reco.user == current_user
      redirect_to pro_recos_path, alert: 'この操作を行う権限がありません。'
    end
  end

  def pro_reco_params
    params.require(:pro_reco).permit(:title, :content, :image, :status)
  end
end