class VisionsController < ApplicationController
  before_action :set_vision, only: [:show, :edit, :update, :destroy]

  # GET /visions
  def index
    @visions = Vision.order(id: :desc).all
  end

  # GET /visions/1
  def show
    @color_scheme = @vision.color.gsub('_', '-')

    @next_vision =
      Vision.find_next_vision(@vision.id)

    @previous_vision =
      Vision.find_previous_vision(@vision.id)

    @random_vision =
      Vision.find_random_vision(@vision.id)
  end

  # GET /visions/new
  def new
    @vision = Vision.new
  end

  # POST /visions
  def create
    @vision = Vision.new(vision_params)

    if @vision.save
      redirect_to @vision.new_identity_path
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vision
      @vision = Vision.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vision_params
      params.require(:vision).permit(:content, :image, :color)
    end
end
