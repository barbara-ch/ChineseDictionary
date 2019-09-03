class HanzisController < ApplicationController
  before_action :set_hanzi, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!, except: [:index,:show]
   
  # GET /hanzis
  # GET /hanzis.json
  def index
    @hanzis = Hanzi.all
  end

  # GET /hanzis/1
  # GET /hanzis/1.json
  def show
    respond_to do |format|
      format.html
      format.js {}
    end
  end

  # GET /hanzis/new
  def new
    @hanzi = Hanzi.new
    respond_to do |f|
      f.html
      f.js {}
    end
  end

  # GET /hanzis/1/edit
  def edit
  end

  # POST /hanzis
  # POST /hanzis.json
  def create
    @hanzi = Hanzi.new(hanzi_params)

    respond_to do |format|
      if @hanzi.save
        format.html { redirect_to @hanzi, notice: 'Znak Hanzi został dodany.' }
        format.js {  }
      else
        format.html { render :new }
        format.js { }
      end
    end
  end

  # PATCH/PUT /hanzis/1
  # PATCH/PUT /hanzis/1.json
  def update
    respond_to do |format|
      if @hanzi.update(hanzi_params)
        format.html { redirect_to @hanzi, notice: 'Znak Hanzi został zedytowany.' }
        format.json { render :show, status: :ok, location: @hanzi }
      else
        format.html { render :edit }
        format.json { render json: @hanzi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hanzis/1
  # DELETE /hanzis/1.json
def destroy
   query = "select word_id from hanzis_words where hanzi_id = #{@hanzi.id}"
    results = ActiveRecord::Base.connection.execute(query)
    results.each do |w|
       Word.find(w[0]).destroy
    end

    @hanzi.destroy
    respond_to do |format|
      format.html { redirect_to hanzis_url, notice: 'Znak Hanzi wraz z zawierającymi go tłumaczeniami został usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hanzi
      @hanzi = Hanzi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hanzi_params
      params.require(:hanzi).permit(:character, :description, :traditional, :stroke, :avatar)
    end
end
