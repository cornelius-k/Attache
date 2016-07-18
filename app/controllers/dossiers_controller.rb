class DossiersController < ApplicationController
  before_action :set_dossier, only: [:show, :edit, :update, :destroy, :as_html, :write, :preview]

  # GET /dossiers
  # GET /dossiers.json
  def index
    @dossiers = Dossier.all
  end

  # GET /dossiers/1
  # GET /dossiers/1.json
  def show
  end

  # GET /dossiers/new
  def new
    @dossier = Dossier.new
  end

  # GET /dossiers/1/edit
  def edit
  end

  # POST /dossiers
  # POST /dossiers.json
  def create
    @dossier = Dossier.new(dossier_params)
    @dossier.sheets.new(template: 'summary')
    respond_to do |format|
      if @dossier.save
        format.html { redirect_to @dossier, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @dossier }
      else
        format.html { render :new }
        format.json { render json: @dossier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dossiers/1
  # PATCH/PUT /dossiers/1.json
  def update
    respond_to do |format|
      if @dossier.update(dossier_params)
        format.html { redirect_to @dossier, notice: 'Dossier was successfully updated.' }
        format.json { render :show, status: :ok, location: @dossier }
      else
        format.html { render :edit }
        format.json { render json: @dossier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dossiers/1
  # DELETE /dossiers/1.json
  def destroy
    @dossier.destroy
    respond_to do |format|
      format.html { redirect_to dossiers_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def as_html
    render text: @dossier.html_content
  end

  def write
    directory = Rails.public_path
    @dossier.sheets.each do |sheet|
      File.open(File.join(directory, sheet.template + '.html'), 'w') do |f|
        @sheet = sheet
        f.puts render_to_string :preview, locals: {sheet: sheet,
          sheet_template: sheet.template}
      end
    end
  end

  def publish
    require_relative '../lib/s3folderupload.rb'
    @uploader = S3FolderUpload.new(Rails.public_path, ENV['AWS_S3_BUCKET'])
    @uploader.upload!
  end

  def preview

    @template = params[:sheet_template] || "summary"
    @sheet = @dossier.sheets.where(template: @template).first
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dossier
      @dossier = Dossier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dossier_params
      params.require(:dossier).permit(:title, :template, :sheet_template)
    end
end
