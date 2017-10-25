class BuffetsController < ApplicationController
  before_action :set_buffet, only: [:show, :edit, :update, :destroy]

  # GET /buffets
  # GET /buffets.json
  def index
    @buffets = Buffet.all
  end

  # GET /buffets/1
  # GET /buffets/1.json
  def show
  end

  # GET /buffets/new
  def new
    @buffet = Buffet.new
  end

  # GET /buffets/1/edit
  def edit
  end

  # POST /buffets
  # POST /buffets.json
  def create
    @buffet = Buffet.new(buffet_params)

    respond_to do |format|
      if @buffet.save
        format.html { redirect_to @buffet, notice: 'Buffet was successfully created.' }
        format.json { render :show, status: :created, location: @buffet }
      else
        format.html { render :new }
        format.json { render json: @buffet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buffets/1
  # PATCH/PUT /buffets/1.json
  def update
    respond_to do |format|
      if @buffet.update(buffet_params)
        format.html { redirect_to @buffet, notice: 'Buffet was successfully updated.' }
        format.json { render :show, status: :ok, location: @buffet }
      else
        format.html { render :edit }
        format.json { render json: @buffet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buffets/1
  # DELETE /buffets/1.json
  def destroy
    @buffet.destroy
    respond_to do |format|
      format.html { redirect_to buffets_url, notice: 'Buffet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buffet
      @buffet = Buffet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buffet_params
      params.require(:buffet).permit(:title, :location, :picture)
    end
end
