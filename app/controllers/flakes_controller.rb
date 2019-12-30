class FlakesController < ApplicationController
  before_action :set_flake, only: [:show, :update, :destroy]

  # GET /flakes
  def index
    @flakes = Flake.all

    render json: @flakes
  end

  # GET /flakes/1
  def show
    render json: @flake
  end

  # POST /flakes
  def create
    @flake = Flake.new(flake_params)

    if @flake.save
      render json: @flake, status: :created, location: @flake
    else
      render json: @flake.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flakes/1
  def update
    if @flake.update(flake_params)
      render json: @flake
    else
      render json: @flake.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flakes/1
  def destroy
    @flake.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flake
      @flake = Flake.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flake_params
      params.require(:flake).permit(:shape)
    end
end
