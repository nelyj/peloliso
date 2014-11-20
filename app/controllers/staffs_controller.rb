class StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  def index
    @staffs = Staff.all
    respond_with(@staffs)
  end

  def show
    respond_with(@staff)
  end

  def new
    @staff = Staff.new
    respond_with(@staff)
  end

  def edit
  end

  def create
    @staff = Staff.new(staff_params)
    @staff.save
    respond_with(@staff)
  end

  def update
    @staff.update(staff_params)
    respond_with(@staff)
  end

  def destroy
    @staff.destroy
    respond_with(@staff)
  end

  private
    def set_staff
      @staff = Staff.find(params[:id])
    end

    def staff_params
      params.require(:staff).permit(:name, :age, :experience, :specialty, :about, :barbershop_id)
    end
end
