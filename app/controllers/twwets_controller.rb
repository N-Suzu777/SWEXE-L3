class TwwetsController < ApplicationController
  before_action :set_twwet, only: %i[ show edit update destroy ]

  # GET /twwets or /twwets.json
  def index
    @twwets = Twwet.all
  end

  # GET /twwets/1 or /twwets/1.json
  def show
  end

  # GET /twwets/new
  def new
    @twwet = Twwet.new
  end

  # GET /twwets/1/edit
  def edit
  end

  # POST /twwets or /twwets.json
  def create
    @twwet = Twwet.new(twwet_params)

    respond_to do |format|
      if @twwet.save
        format.html { redirect_to twwet_url(@twwet), notice: "Twwet was successfully created." }
        format.json { render :show, status: :created, location: @twwet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twwet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twwets/1 or /twwets/1.json
  def update
    respond_to do |format|
      if @twwet.update(twwet_params)
        format.html { redirect_to twwet_url(@twwet), notice: "Twwet was successfully updated." }
        format.json { render :show, status: :ok, location: @twwet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twwet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twwets/1 or /twwets/1.json
  def destroy
    @twwet.destroy

    respond_to do |format|
      format.html { redirect_to twwets_url, notice: "Twwet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twwet
      @twwet = Twwet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twwet_params
      params.require(:twwet).permit(:message, :tdate)
    end
end
