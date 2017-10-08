class PlaceRatingsController < ApplicationController
  before_action :set_place_rating, only: [:show, :edit, :update, :destroy]

  # GET /place_ratings
  # GET /place_ratings.json
  def index
    @place_ratings = PlaceRating.all
  end

  # GET /place_ratings/1
  # GET /place_ratings/1.json
  def show
  end

  # GET /place_ratings/new
  def new
    @place_rating = PlaceRating.new
  end

  # GET /place_ratings/1/edit
  def edit
  end

  # POST /place_ratings
  # POST /place_ratings.json
  def create
    @place_rating = PlaceRating.new(place_rating_params)

    respond_to do |format|
      if @place_rating.save
        format.html { redirect_to @place_rating, notice: 'Place rating was successfully created.' }
        format.json { render :show, status: :created, location: @place_rating }
      else
        format.html { render :new }
        format.json { render json: @place_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_ratings/1
  # PATCH/PUT /place_ratings/1.json
  def update
    respond_to do |format|
      if @place_rating.update(place_rating_params)
        format.html { redirect_to @place_rating, notice: 'Place rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_rating }
      else
        format.html { render :edit }
        format.json { render json: @place_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_ratings/1
  # DELETE /place_ratings/1.json
  def destroy
    @place_rating.destroy
    respond_to do |format|
      format.html { redirect_to place_ratings_url, notice: 'Place rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_rating
      @place_rating = PlaceRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_rating_params
      params.fetch(:place_rating, {})
    end
end
