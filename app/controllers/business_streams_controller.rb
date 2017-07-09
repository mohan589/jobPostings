class BusinessStreamsController < ApplicationController
  before_action :set_business_stream, only: [:show, :edit, :update, :destroy]

  # GET /business_streams
  # GET /business_streams.json
  def index
    @business_streams = BusinessStream.all
  end

  # GET /business_streams/1
  # GET /business_streams/1.json
  def show
  end

  # GET /business_streams/new
  def new
    @business_stream = BusinessStream.new
  end

  # GET /business_streams/1/edit
  def edit
  end

  # POST /business_streams
  # POST /business_streams.json
  def create
    @business_stream = BusinessStream.new(business_stream_params)

    respond_to do |format|
      if @business_stream.save
        format.html { redirect_to @business_stream, notice: 'Business stream was successfully created.' }
        format.json { render :show, status: :created, location: @business_stream }
      else
        format.html { render :new }
        format.json { render json: @business_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_streams/1
  # PATCH/PUT /business_streams/1.json
  def update
    respond_to do |format|
      if @business_stream.update(business_stream_params)
        format.html { redirect_to @business_stream, notice: 'Business stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_stream }
      else
        format.html { render :edit }
        format.json { render json: @business_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_streams/1
  # DELETE /business_streams/1.json
  def destroy
    @business_stream.destroy
    respond_to do |format|
      format.html { redirect_to business_streams_url, notice: 'Business stream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_stream
      @business_stream = BusinessStream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_stream_params
      params.require(:business_stream).permit(:name)
    end
end
