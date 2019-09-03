class PartofspeachesController < ApplicationController
  before_action :set_partofspeach, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!

  # GET /partofspeaches
  # GET /partofspeaches.json
  def index
    @partofspeaches = Partofspeach.all
  end

  # GET /partofspeaches/1
  # GET /partofspeaches/1.json
  def show
  end

  # GET /partofspeaches/new
  def new
    @partofspeach = Partofspeach.new
  end

  # GET /partofspeaches/1/edit
  def edit
  end

  # POST /partofspeaches
  # POST /partofspeaches.json
  def create
    @partofspeach = Partofspeach.new(partofspeach_params)

    respond_to do |format|
      if @partofspeach.save
        format.html { redirect_to @partofspeach, notice: 'Część mowy została dodana.' }
        format.json { render :show, status: :created, location: @partofspeach }
      else
        format.html { render :new }
        format.json { render json: @partofspeach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partofspeaches/1
  # PATCH/PUT /partofspeaches/1.json
  def update
    respond_to do |format|
      if @partofspeach.update(partofspeach_params)
        format.html { redirect_to @partofspeach, notice: 'Część mowy została zedytowana.' }
        format.json { render :show, status: :ok, location: @partofspeach }
      else
        format.html { render :edit }
        format.json { render json: @partofspeach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partofspeaches/1
  # DELETE /partofspeaches/1.json
  def destroy
    @partofspeach.destroy
    respond_to do |format|
      format.html { redirect_to partofspeaches_url, notice: 'Część mowy została usunięta.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partofspeach
      @partofspeach = Partofspeach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partofspeach_params
      params.require(:partofspeach).permit(:name, :short)
    end
end
