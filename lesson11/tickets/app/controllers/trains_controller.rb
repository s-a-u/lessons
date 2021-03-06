class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :edit, :update, :destroy]

  def index
    @trains = Train.all
  end

  def show
  end

  def new
    @train = Train.new
  end

  def edit
  end


  def create
    @train = Train.new(train_params)

    respond_to do |format|
      if @train.save
        format.html { redirect_to @train, notice: 'Train was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @train.update(train_params)
        format.html { redirect_to @train, notice: 'Train was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @train.destroy
    respond_to do |format|
      format.html { redirect_to trains_url, notice: 'Train was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_params
      params.require(:train).permit(:number, :route_id, :user_id)
    end
end
