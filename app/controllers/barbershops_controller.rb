class BarbershopsController < ApplicationController
  before_action :set_barbershop, only: [:show, :edit, :update, :destroy]

  def index
    @barbershops = Barbershop.all
    respond_with(@barbershops)
  end

  def show
    respond_with(@barbershop)
  end

  def new
    @barbershop = Barbershop.new
    respond_with(@barbershop)
  end

  def edit
  end

  def create
    @barbershop = Barbershop.new(barbershop_params)
    @barbershop.save
    respond_with(@barbershop)
  end

  def update
    @barbershop.update(barbershop_params)
    respond_with(@barbershop)
  end

  def destroy
    @barbershop.destroy
    respond_with(@barbershop)
  end

  private
    def set_barbershop
      @barbershop = Barbershop.find(params[:id])
    end

    def barbershop_params
      params.require(:barbershop).permit(:name, :address, :description, :user_id)
    end
end
