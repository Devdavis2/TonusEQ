class TonusEqsController < ApplicationController
  before_action :set_tonus_eq, only: [:show, :update, :destroy]

  # GET /tonus_eqs
  def index
    @tonus_eqs = TonusEq.all

    render json: @tonus_eqs
  end

  # GET /tonus_eqs/1
  def show
    render json: @tonus_eq
  end

  # POST /tonus_eqs
  def create
    @tonus_eq = TonusEq.new(tonus_eq_params)

    if @tonus_eq.save
      render json: @tonus_eq, status: :created, location: @tonus_eq
    else
      render json: @tonus_eq.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tonus_eqs/1
  def update
    if @tonus_eq.update(tonus_eq_params)
      render json: @tonus_eq
    else
      render json: @tonus_eq.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tonus_eqs/1
  def destroy
    @tonus_eq.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tonus_eq
      @tonus_eq = TonusEq.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tonus_eq_params
      params.require(:tonus_eq).permit(:genre, :artist, :song)
    end
end
