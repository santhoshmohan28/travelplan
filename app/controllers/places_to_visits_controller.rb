class PlacesToVisitsController < ApplicationController
  before_action :set_places_to_visit, only: [:show, :edit, :update, :destroy]

  # GET /places_to_visits
  # GET /places_to_visits.json
  def index
    @places_to_visits = PlacesToVisit.all
  end

  # GET /places_to_visits/1
  # GET /places_to_visits/1.json
  def show
  end

  # GET /places_to_visits/new
  def new
    @places_to_visit = PlacesToVisit.new
  end

  # GET /places_to_visits/1/edit
  def edit
  end

  # POST /places_to_visits
  # POST /places_to_visits.json
  def create
    @places_to_visit = PlacesToVisit.new(places_to_visit_params)

    respond_to do |format|
      if @places_to_visit.save
        format.html { redirect_to @places_to_visit, notice: 'Places to visit was successfully created.' }
        format.json { render :show, status: :created, location: @places_to_visit }
      else
        format.html { render :new }
        format.json { render json: @places_to_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places_to_visits/1
  # PATCH/PUT /places_to_visits/1.json
  def update
    respond_to do |format|
      if @places_to_visit.update(places_to_visit_params)
        format.html { redirect_to @places_to_visit, notice: 'Places to visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @places_to_visit }
      else
        format.html { render :edit }
        format.json { render json: @places_to_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places_to_visits/1
  # DELETE /places_to_visits/1.json
  def destroy
    @places_to_visit.destroy
    respond_to do |format|
      format.html { redirect_to places_to_visits_url, notice: 'Places to visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_places_to_visit
      @places_to_visit = PlacesToVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def places_to_visit_params
      params.fetch(:places_to_visit, {})
    end
end
