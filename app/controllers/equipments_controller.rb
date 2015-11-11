class EquipmentsController < ApplicationController
  before_action :set_equipment, only: [:edit, :show, :update, :destroy]

  def index
    # @equipment = Equipment.new
    # @equipments = Equipment.all
  end

  def new
  end

  def create
    @equipment = Eqipment.new(eqipment_params)
    render :new unless @equipment.save
  end

  def show
  end

  def edit
  end

  def update
    render :edit unless @equipment.update(equipment_params)
  end

  def destroy
    @equipment.destroy
  end

  private

  def equipment_params
    params.require(:eqipment).permit!
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end
