class BookSitesController < ApplicationController
  before_action :set_book_site, only: [:show, :edit, :update, :destroy]

  # GET /book_sites
  # GET /book_sites.json
  def index
    @book_sites = BookSite.all
  end

  # GET /book_sites/1
  # GET /book_sites/1.json
  def show
  end

  # GET /book_sites/new
  def new
    @book_site = BookSite.new
  end

  # GET /book_sites/1/edit
  def edit
  end

  # POST /book_sites
  # POST /book_sites.json
  def create
    @book_site = BookSite.new(book_site_params)

    respond_to do |format|
      if @book_site.save
        format.html { redirect_to @book_site, notice: 'Book site was successfully created.' }
        format.json { render :show, status: :created, location: @book_site }
      else
        format.html { render :new }
        format.json { render json: @book_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_sites/1
  # PATCH/PUT /book_sites/1.json
  def update
    respond_to do |format|
      if @book_site.update(book_site_params)
        format.html { redirect_to @book_site, notice: 'Book site was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_site }
      else
        format.html { render :edit }
        format.json { render json: @book_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_sites/1
  # DELETE /book_sites/1.json
  def destroy
    @book_site.destroy
    respond_to do |format|
      format.html { redirect_to book_sites_url, notice: 'Book site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_site
      @book_site = BookSite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_site_params
      params.require(:book_site).permit(:title, :page_count, :rating)
    end
end
