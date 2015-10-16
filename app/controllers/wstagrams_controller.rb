class WstagramsController < ApplicationController
  before_action :set_wstagram, only: [:show, :edit, :update, :destroy]

  # GET /wstagrams
  # GET /wstagrams.json
  def index
    @wstagrams = Wstagram.all
  end

  # GET /wstagrams/1
  # GET /wstagrams/1.json
  def show
  end

  # GET /wstagrams/new
  def new
    @wstagram = Wstagram.new
  end

  # GET /wstagrams/1/edit
  def edit
  end

  # POST /wstagrams
  # POST /wstagrams.json
  def create
    @wstagram = Wstagram.new(wstagram_params)

    respond_to do |format|
      if @wstagram.save
        format.html { redirect_to @wstagram, notice: 'Wstagram was successfully created.' }
        format.json { render :show, status: :created, location: @wstagram }
      else
        format.html { render :new }
        format.json { render json: @wstagram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wstagrams/1
  # PATCH/PUT /wstagrams/1.json
  def update
    respond_to do |format|
      if @wstagram.update(wstagram_params)
        format.html { redirect_to @wstagram, notice: 'Wstagram was successfully updated.' }
        format.json { render :show, status: :ok, location: @wstagram }
      else
        format.html { render :edit }
        format.json { render json: @wstagram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wstagrams/1
  # DELETE /wstagrams/1.json
  def destroy
    @wstagram.destroy
    respond_to do |format|
      format.html { redirect_to wstagrams_url, notice: 'Wstagram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wstagram
      @wstagram = Wstagram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wstagram_params
      params.require(:wstagram).permit(:description, :picture)
    end
end
