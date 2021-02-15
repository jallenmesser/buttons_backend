class CombinationButtonsController < ApplicationController
    before_action :set_combination_button, only: [:show, :update, :destroy]

  # GET /combination_buttons
  def index
    @combination_buttons = CombinationButton.all
    json_response(@combination_buttons)
  end

  # POST /combination_buttons
  def create
    @combination_button = CombinationButton.create!(button_params)
    json_response(@combination_button, :created)
  end

  # GET /combination_buttons/:id
  def show
    json_response(@combination_button)
  end

  # PUT /combination_buttons/:id
  def update
    @combination_button.update(button_params)
    head :no_content
  end

  # DELETE /combination_buttons/:id
  def destroy
    @combination_button.destroy
    head :no_content
  end

  private

  def combination_button_params
    # whitelist params
    params.permit(:combination_id, :button_id)
  end

  def set_combination_button
    @combination_button = CombinationButton.find(params[:id])
  end
end
