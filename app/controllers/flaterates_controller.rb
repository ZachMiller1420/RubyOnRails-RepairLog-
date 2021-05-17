class FlateratesController < ApplicationController
  before_action :set_flaterate, only: %i[ show edit update destroy ]

  # GET /flaterates or /flaterates.json
  def index
    @flaterates = Flaterate.all
  end

  # GET /flaterates/1 or /flaterates/1.json
  def show
  end

  # GET /flaterates/new
  def new
    @flaterate = Flaterate.new
  end

  # GET /flaterates/1/edit
  def edit
  end

  # POST /flaterates or /flaterates.json
  def create
    @flaterate = Flaterate.new(flaterate_params)

    respond_to do |format|
      if @flaterate.save
        format.html { redirect_to @flaterate, notice: "Entry was successfully created." }
        format.json { render :show, status: :created, location: @flaterate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flaterate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flaterates/1 or /flaterates/1.json
  def update
    respond_to do |format|
      if @flaterate.update(flaterate_params)
        format.html { redirect_to @flaterate, notice: "RO# was successfully updated." }
        format.json { render :show, status: :ok, location: @flaterate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flaterate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flaterates/1 or /flaterates/1.json
  def destroy
    @flaterate.destroy
    respond_to do |format|
      format.html { redirect_to flaterates_url, notice: "RO# was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flaterate
      @flaterate = Flaterate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flaterate_params
      params.require(:flaterate).permit(:date, :ro_num, :year_make_model, :work, :hrs)
    end
end
