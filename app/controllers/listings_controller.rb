class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:home, :index]

  respond_to :html,:js 
  def home

  end
  # GET /listings
  # GET /listings.json
  def index
    if current_user == nil
      @listings = Listing.where('price < 200.00 or approved = true').search(params[:search]).paginate(:page => params[:page], :per_page => 9).order('created_at DESC')
    elsif current_user.admin?
      @listings = Listing.order('price DESC').search(params[:search]).paginate(:page => params[:page])
    elsif (params[:own]) == "true"
      @listings = Listing.where(:user => current_user).paginate(:page => params[:page])
    else
      @listings = Listing.where('price < 200.00 or approved = true').search(params[:search]).order('created_at DESC').paginate(:page => params[:page], :per_page => 9)
    end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
    if current_user == @listing.user or current_user.admin?
      @listing = Listing.find(params[:id])
    else redirect_to listings_path
    end
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    if current_user.trust?
      @listing.approved = true
    end
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    if current_user == @listing.user
      @listing.destroy
    end
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:name, :quality, :desc, :picture, :game, :price, :user_id, :approved)
    end
end
