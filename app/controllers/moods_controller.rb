class MoodsController < ApplicationController
  before_action :set_mood, only: [:show, :update, :destroy]

  # GET /moods
  def index
    moods = Mood.all.where(tonus_eq_id: params[:tonus_eq_id])

    render json: moods
  end

  # GET /moods/1
  def show
    render json: @mood
  end

  # POST /moods
  def create
    moods = Mood.where(tonus_eq_id: params[:tonus_eq_id])
    @mood = moods.new(mood_params)

    if @mood.save
      render json: @mood, status: :created, location: @mood
    else
      render json: @mood.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moods/1
  def update
    if @mood.update(mood_params)
      render json: @mood
    else
      render json: @mood.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moods/1
  def destroy
    @mood.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood
      @mood = Mood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mood_params
      params.require(:mood).permit(:mood_state, :mood_duration, :mood_duration_percentage)
    end
end
