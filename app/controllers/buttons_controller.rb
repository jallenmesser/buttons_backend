class ButtonsController < ApplicationController
    before_action :set_button, only: [:show]

  # GET /buttons
  def index
    @buttons = Button.all
    render json: @buttons
  end

  # GET /buttons/:id
  def show
    render json: @button
  end

  private

  def set_button
    @button = Button.find(params[:id])
  end
end
