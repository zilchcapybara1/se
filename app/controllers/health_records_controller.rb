class HealthRecordsController < ApplicationController
  before_action :set_health_record, only: [:show, :edit, :update, :destroy]
before_action :check_login

  # GET /health_records
  # GET /health_records.json
  def index
    @health_records = HealthRecord.all
  end

  # GET /health_records/1
  # GET /health_records/1.json
  def show
  end

  # GET /health_records/new
  def new
    @health_record = HealthRecord.new
  end

  # GET /health_records/1/edit
  def edit
  end

  # POST /health_records
  # POST /health_records.json
  def create
    @health_record = HealthRecord.new(health_record_params)

    respond_to do |format|
      if @health_record.save
        format.html { redirect_to @health_record, notice: 'Health record was successfully created.' }
        format.json { render :show, status: :created, location: @health_record }
      else
        format.html { render :new }
        format.json { render json: @health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_records/1
  # PATCH/PUT /health_records/1.json
  def update
    respond_to do |format|
      if @health_record.update(health_record_params)
        format.html { redirect_to @health_record, notice: 'Health record was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_record }
      else
        format.html { render :edit }
        format.json { render json: @health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_records/1
  # DELETE /health_records/1.json
  def destroy
    @health_record.destroy
    respond_to do |format|
      format.html { redirect_to health_records_url, notice: 'Health record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_record
      @health_record = HealthRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_record_params
      params.require(:health_record).permit(:name, :birthday, :diagnosis, :recorded_by, :history)
    end
end
