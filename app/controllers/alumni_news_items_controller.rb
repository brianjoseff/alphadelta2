class AlumniNewsItemsController < ApplicationController
  before_action :set_alumni_news_item, only: [:show, :edit, :update, :destroy]

  # GET /alumni_news_items
  # GET /alumni_news_items.json
  def index
    @alumni_news_items = AlumniNewsItem.all
  end

  # GET /alumni_news_items/1
  # GET /alumni_news_items/1.json
  def show
  end

  # GET /alumni_news_items/new
  def new
    @alumni_news_item = AlumniNewsItem.new
  end

  # GET /alumni_news_items/1/edit
  def edit
  end

  # POST /alumni_news_items
  # POST /alumni_news_items.json
  def create
    @alumni_news_item = AlumniNewsItem.new(alumni_news_item_params)

    respond_to do |format|
      if @alumni_news_item.save
        format.html { redirect_to @alumni_news_item, notice: 'Alumni news was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alumni_news_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @alumni_news_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni_news_items/1
  # PATCH/PUT /alumni_news_items/1.json
  def update
    respond_to do |format|
      if @alumni_news_item.update(alumni_news_item_params)
        format.html { redirect_to @alumni_news_item, notice: 'Alumni news was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alumni_news_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni_news_items/1
  # DELETE /alumni_news_items/1.json
  def destroy
    @alumni_news_item.destroy
    respond_to do |format|
      format.html { redirect_to alumni_news_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni_news_item
      @alumni_news_item = AlumniNewsItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_news_item_params
      params.require(:alumni_news_items).permit(:title, :content)
    end
end
