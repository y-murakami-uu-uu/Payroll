class PerformancesController < ApplicationController
  before_action :set_performance, only: [:destroy]

  def index
    @performances = Performance.all
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)

    respond_to do |format|
      if @performance.save
        format.html { redirect_to performances_path, notice: 'performance was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @performance.destroy
    respond_to do |format|
      format.html { redirect_to performances_path, notice: 'performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance
      @performance = Performance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performance_params
      params.require(:performance).permit(:payroll1_id, :performance_amount, :get_day)
    end
end
