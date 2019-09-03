class PinyinsController < ApplicationController
  before_action :set_pinyin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pinyins
  # GET /pinyins.json
  def index
    @pinyins = Pinyin.all
  end

  # GET /pinyins/1
  # GET /pinyins/1.json
  def show
  end

  # GET /pinyins/new
  def new
    @pinyin = Pinyin.new
    respond_to do |f|
      f.html
      f.js {}
    end
  end

  # GET /pinyins/1/edit
  def edit
  end

  # POST /pinyins
  # POST /pinyins.json
  def create
    @pinyin = Pinyin.new(pinyin_params)

    respond_to do |format|
      if @pinyin.save
        format.html { redirect_to @pinyin, notice: 'Pinyin został dodany.' }
        format.js {  }
      else
        format.html { render :new }
        format.js { }
      end
    end
  end

  # PATCH/PUT /pinyins/1
  # PATCH/PUT /pinyins/1.json
  def update
    respond_to do |format|
      if @pinyin.update(pinyin_params)
        format.html { redirect_to @pinyin, notice: 'Pinyin został zedytowany.' }
        format.json { render :show, status: :ok, location: @pinyin }
      else
        format.html { render :edit }
        format.json { render json: @pinyin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinyins/1
  # DELETE /pinyins/1.json
  def destroy
    query = "select word_id from pinyins_words where pinyin_id = #{@pinyin.id}"
    results = ActiveRecord::Base.connection.execute(query)
    results.each do |w|
       Word.find(w[0]).destroy
    end
    @pinyin.destroy
    respond_to do |format|
      format.html { redirect_to pinyins_url, notice: 'Pinyin wraz z zawierającymi go tłumaczeniami został usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinyin
      @pinyin = Pinyin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinyin_params
      params.require(:pinyin).permit(:tone, :syllable, :alternative, :tonespelling)
    end
end
