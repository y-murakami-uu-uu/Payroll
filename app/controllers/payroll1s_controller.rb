class Payroll1sController < ApplicationController
  before_action :set_payroll1, only: [:show, :edit, :update, :destroy]

  # GET /payroll1s
  # GET /payroll1s.json
  def index
    @payroll1s = Payroll1.all
  end

  # GET /payroll1s/1
  # GET /payroll1s/1.json
  def show
  end

  # GET /payroll1s/new
  def new
    @payroll1 = Payroll1.new
  end

  # GET /payroll1s/1/edit
  def edit
  end

  # POST /payroll1s
  # POST /payroll1s.json
  def create
    @payroll1 = Payroll1.new(payroll1_params)

    respond_to do |format|
      if @payroll1.save
        format.html { redirect_to @payroll1, notice: 'Payroll1 was successfully created.' }
        format.json { render :show, status: :created, location: @payroll1 }
      else
        format.html { render :new }
        format.json { render json: @payroll1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payroll1s/1
  # PATCH/PUT /payroll1s/1.json
  def update
    respond_to do |format|
      if @payroll1.update(payroll1_params)
        format.html { redirect_to @payroll1, notice: 'Payroll1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @payroll1 }
      else
        format.html { render :edit }
        format.json { render json: @payroll1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payroll1s/1
  # DELETE /payroll1s/1.json
  def destroy
    @payroll1.destroy
    respond_to do |format|
      format.html { redirect_to payroll1s_url, notice: 'Payroll1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll1
      @payroll1 = Payroll1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payroll1_params
      params.require(:payroll1).permit(:name, :basic_salary, :payment_amount, :tax)
    end
end
