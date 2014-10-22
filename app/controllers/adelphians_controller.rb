class AdelphiansController < ApplicationController
  def new
    @adelphian = Adelphian.new
  end
  
  def create
    @adelphian = Adelphian.create(adelphian_params)
    # if ["pdf"].include? File.extname(params[:pdf])
    #   @adelphian.pdf = params[:pdf]
    # else
    #   flash[:message] = "The Adelphian should be a pdf. Word docs are janky." #render flash message
    # end
    respond_to do |format|
      if @adelphian.save
        format.html { redirect_to @adelphian, notice: 'Adelphian was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adelphian }
      else
        format.html { render action: 'new' }
        format.json { render json: @adelphian.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
  end
  
  def pdf
    send_file Rails.root.join('private', 'Alpha Delta Governing Documents.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end
  
  private
  def adelphian_params
    params.require(:adelphian).permit(:pdf)
  end
end
