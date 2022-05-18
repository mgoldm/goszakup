class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @requests = current_user.requests.all
  end

  def show
    @request = Request.find(params[:id])
    @responses=@request.responses
  end

  def new
    @request = Request.new
    @request.key_words.new
  end

  def create
    @request = current_user.requests.new(request_params)

    if @request.save
      redirect_to @request, notice: 'You request was succesfully created'
    else
      render :new, alert: @request.errors.full_messages
    end
  end

  private

  def request_params
    params.require(:request).permit(:body, key_words_attributes: %i[body])
  end
end
