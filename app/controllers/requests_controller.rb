class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  

  # GET /requests/new
  def new
    @request = Request.new
  end

  
  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to root_path, notice: ' Thank You! Your request was successfully received. We will contact you soon.' }
        format.json { render :show, status: :created, location: @request }

        begin         
          send_email("New Client Request submitted through TDCDIGITALMEDIA website", "A new request was made by #{@request.name}, from company: #{@request.company_name}, email: #{@request.email}. He/She is in need of: #{@request.descriotion}, the timeline is #{@request.timeline}.They got our reference from #{@request.reference}, additional info: #{@request.other}. Please assess the requirements, inform the higher management, and help arrange for a client meeting", @request.email, @request.email)
        rescue 
          p "error in sending email from request controller"
        end         

      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :company_name, :email, :descriotion, :timeline, :reference, :other)
    end
end
