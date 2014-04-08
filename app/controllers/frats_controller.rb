class FratsController < ApplicationController
  before_action :set_frat, only: [:show, :edit, :update, :destroy]

  # GET /frats
  # GET /frats.json
  def index
    @frats = Frat.all
  end

  # GET /frats/1
  # GET /frats/1.json
  def show
  end

  # GET /frats/new
  def new
    @frat = Frat.new
  end

  # GET /frats/1/edit
  def edit
  end

  # POST /frats
  # POST /frats.json
  def create
    @frat = Frat.new(frat_params)

    respond_to do |format|
      if @frat.save
        format.html { redirect_to @frat, notice: 'Frat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @frat }
      else
        format.html { render action: 'new' }
        format.json { render json: @frat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frats/1
  # PATCH/PUT /frats/1.json
  def update
    respond_to do |format|
      if @frat.update(frat_params)
        format.html { redirect_to @frat, notice: 'Frat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @frat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frats/1
  # DELETE /frats/1.json
  def destroy
    @frat.destroy
    respond_to do |format|
      format.html { redirect_to frats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frat
      @frat = Frat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frat_params
      params.require(:frat).permit(:name, :id)
    end
end
