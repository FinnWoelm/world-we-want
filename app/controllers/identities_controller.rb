class IdentitiesController < ApplicationController

  # GET /identities/new
  def new
    @vision = Vision.find(params[:id]).verify_id_token(params[:token])
    @identity = Identity.new if @vision.present?
  end

  # POST /identities
  def create
    @identity = Identity.new(identity_params)

    if @identity.save
      redirect_to @identity, notice: 'Identity was successfully created.'
    else
      render :new
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def identity_params
      params.require(:identity).permit(:vision, :political_affiliation, :religious_affiliation, :age, :gender, :home_country, :ethnicity, :profession, :other)
    end
end
