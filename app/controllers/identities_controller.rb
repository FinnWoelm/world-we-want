class IdentitiesController < ApplicationController

  # GET /identities/new
  def new
    @vision = Vision.includes(:identity).find(params[:id]).verify_id_token(params[:token])

    @color_scheme = @vision.color.gsub('_', '-') if @vision.present?
    if @vision.present? and @vision.identity.nil?
      @identity = Identity.new
    end
  end

  # POST /identities
  def create
    @vision = Vision.includes(:identity).find(params[:id]).verify_id_token(params[:token])

    if @vision.present? and @vision.identity.nil?
      @identity = Identity.new(identity_params.merge(:vision => @vision))
    end

    if @identity and @identity.save
      redirect_to @vision
    else
      @color_scheme = @vision.color.gsub('_', '-') if @vision.present?
      render :new
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def identity_params
      params.require(:identity).permit(:political_affiliation, :religious_affiliation, :age, :gender, :home_country, :ethnicity, :profession, :other)
    end
end
