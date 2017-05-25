class YasaisController < ApplicationController
  before_action :set_yasai, only: [:show, :edit, :update, :destroy]

  # GET /yasais
  # GET /yasais.json
  def index
    @yasais = Yasai.all
  end

  # GET /yasais/1
  # GET /yasais/1.json
  def show
  end

  # GET /yasais/new
  def new
    @yasai = Yasai.new
  end

  # GET /yasais/1/edit
  def edit
  end

  # POST /yasais
  # POST /yasais.json
  def create
    @yasai = Yasai.new(yasai_params)

    respond_to do |format|
      if @yasai.save
        format.html { redirect_to @yasai, notice: 'Yasai was successfully created.' }
        format.json { render :show, status: :created, location: @yasai }
      else
        format.html { render :new }
        format.json { render json: @yasai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yasais/1
  # PATCH/PUT /yasais/1.json
  def update
    respond_to do |format|
      if @yasai.update(yasai_params)
        format.html { redirect_to @yasai, notice: 'Yasai was successfully updated.' }
        format.json { render :show, status: :ok, location: @yasai }
      else
        format.html { render :edit }
        format.json { render json: @yasai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yasais/1
  # DELETE /yasais/1.json
  def destroy
    @yasai.destroy
    respond_to do |format|
      format.html { redirect_to yasais_url, notice: 'Yasai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yasai
      @yasai = Yasai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yasai_params
      params.require(:yasai).permit(:name, :quantity)
    end
end
