class RequestsController < ApplicationController
 before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
  	@application = Application.find(params[:application_id])
  	@requests = @application.requests
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  	@request = Request.find(params[:id])
  end

  # GET /requests/new
  def new
    @request = Request.new(params[:request])
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.application_id = params[:application_id].to_i

    respond_to do |format|
      if @request.save
        format.html { redirect_to '/applications/'+params[:application_id], notice: 'Request was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to '/applications/'+params[:application_id], notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request = Request.find(params[:id])
    @application = Application.find(params[:application_id])
    @request.destroy
    respond_to do |format|
      format.html { redirect_to application_requests_url(@application) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:request).permit(:name, :application_id)
    end

    def request_params
      params.require(:request).permit(:name, :body, :url, :headers, :req_type, :application_id)
    end

end
