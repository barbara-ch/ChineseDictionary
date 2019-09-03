class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  before_action :set_pinyins, only: [:new, :edit, :update, :create]
  before_action :set_hanzis, only: [:new, :edit, :update, :create]
  before_action :set_examples, only: [:new, :edit, :update, :create]
   before_action :authenticate_user!, except: [:index,:show, :classifiers]

  # GET /words
  # GET /words.json
  def index
    @words = Word.all
      # @q = Word.ransack(params[:q])
      # @words = @q.result(distinct: true)
  end

  # GET /words/1
  # GET /words/1.json
  def show
    
  end

  # GET /words/new
  def new
    @word = Word.new
    1.times {@word.examples.build}
  end

  # GET /words/1/edit
  def edit
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(word_params)
    # @hanzi = Hanzi.new(hanzi_params)
    # @pinyin = Pinyin.new(pinyin_params)
    # @example = Example.new(example_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Tłumaczenie zostało dodane.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /words/classifier
  def classifiers
    @words=Word.classifier
  end



  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to @word, notice: 'Tłumaczenie zostało zedytowane.' }
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to words_url, notice: 'Tłumaczenie zostało usunięte.' }
      format.json { head :no_content }
    end
  end

    def check
    @hanzi = Hanzi.find_or_create_by(character: character)
  end

  def check_hanzi
    character = params[:character]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:content, :pos_id, hanzi_ids: [],  pinyin_ids: [],
        examples_attributes: [:id, :chinese, :spelling, :polish])
    end

    def set_pinyins
      @pinyins = Pinyin.all.map do |p|
        [ p.syllable, p.tone, p.alternative, p.id]
      end
    end

    def set_hanzis
      @hanzis = Hanzi.all.map do |h|
        [ h.character, h.traditional, h.description, h.stroke, h.id]
      end
    end

    def set_examples
      @examples = Example.all.map do |e|
        [ e.chinese, e.spelling, e.polish, e.id]
      end
    end

    #     def set_pinyins
    #   @pinyins = Pinyin.find(:all).map do |p|
    #     [ p.syllable, p.tone, p.alternative, p.id]
    #   end
    # end

    # def set_hanzis
    #   @hanzis = Hanzi.find(:all).map do |h|
    #     [ h.character, h.traditional, h.description, h.stroke, h.id]
    #   end
    # end

    # def set_examples
    #   @examples = Example.find(:all).map do |e|
    #     [ e.chinese, e.spelling, e.polish, e.id]
    #   end
    # end
end
