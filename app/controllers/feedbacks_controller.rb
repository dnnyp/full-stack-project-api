# frozen_string_literal: true

class FeedbacksController < OpenReadController
  before_action :roster
  before_action :set_feedback, only: %i[destroy]

  # GET /rosters/:roster_id/feedbacks
  def index
    @feedbacks = @roster.feedbacks

    render json: @feedbacks
  end

  # GET /rosters/:roster_id/feedbacks/:id
  def show
    render json: Feedback.find(params[:id])
  end

  # POST /rosters/:roster_id/feedbacks
  def create
    @feedback = @roster.feedbacks.build(feedback_params)

    if @feedback.save
      render json: @feedback, status: :created
    else
      render json: @feedback.errors, status: :unprocessable_entity
    end
  end

  private

  def roster
    @roster = Roster.find(params[:roster_id])
  end

  # Only allow a trusted parameter "white list" through.
  def feedback_params
    params.require(:feedback).permit(:comment, :rating)
  end
end
