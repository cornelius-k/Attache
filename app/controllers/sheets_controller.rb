class SheetsController < ApplicationController
  before_filter :load_parent
  before_action :set_sheet, only: [:show, :edit, :update, :destroy]

  # GET /sheets
  # GET /sheets.json
  def index
    @sheets = @dossier.sheets.all
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
    @sheet = @dossier.sheets.find(params[:id])
  end

  # GET /sheets/new
  def new
    @sheet = @dossier.sheets.new
  end

  # GET /sheets/1/edit
  def edit
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = @dossier.sheets.new(sheet_params)

    respond_to do |format|
      if @sheet.save
        format.html { redirect_to [@dossier, @sheet], notice: 'Sheet was successfully created.' }
        format.json { render :show, status: :created, location: @sheet }
      else
        format.html { render :new }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/1
  # PATCH/PUT /sheets/1.json
  def update
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to dossier_sheet_path(@dossier, @sheet), notice: 'Sheet was successfully updated. ' + sheet_params.to_json }
        format.json { render :show, status: :ok, location: dossier_sheet_path(@dossier, @sheet) }
      else
        format.html { render :edit }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet.destroy
    respond_to do |format|
      format.html { redirect_to sheets_url, notice: 'Sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def load_parent
      @dossier = Dossier.find(params[:dossier_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_params
      params.require(:sheet).permit(:title, :template, :dossier_id, :markup)
    end
end
