class VisitorReviewsController < ApplicationController
  before_action :set_visitor_review, only: [:show, :edit, :update, :destroy]

  # GET /visitor_reviews
  # GET /visitor_reviews.json
  def index
    @visitor_reviews = VisitorReview.all
  end

  # GET /visitor_reviews/1
  # GET /visitor_reviews/1.json
  def show
  end

  # GET /visitor_reviews/new
  def new
    @visitor_review = VisitorReview.new
  end

  # GET /visitor_reviews/1/edit
  def edit
  end

  # POST /visitor_reviews
  # POST /visitor_reviews.json
  def create
    @visitor_review = VisitorReview.new(visitor_review_params)

    respond_to do |format|
      if @visitor_review.save
        format.html { redirect_to @visitor_review, notice: 'Visitor review was successfully created.' }
        format.json { render :show, status: :created, location: @visitor_review }
      else
        format.html { render :new }
        format.json { render json: @visitor_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitor_reviews/1
  # PATCH/PUT /visitor_reviews/1.json
  def update
    respond_to do |format|
      if @visitor_review.update(visitor_review_params)
        format.html { redirect_to @visitor_review, notice: 'Visitor review was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitor_review }
      else
        format.html { render :edit }
        format.json { render json: @visitor_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitor_reviews/1
  # DELETE /visitor_reviews/1.json
  def destroy
    @visitor_review.destroy
    respond_to do |format|
      format.html { redirect_to visitor_reviews_url, notice: 'Visitor review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor_review
      @visitor_review = VisitorReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitor_review_params
      params.fetch(:visitor_review, {})
    end
end
