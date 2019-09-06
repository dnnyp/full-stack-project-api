# frozen_string_literal: true

class RostersController < OpenReadController
  before_action :set_roster, only: %i[show update destroy]

  # GET /rosters
  def index
    @rosters = Roster.all

    render json: @rosters
  end

  # GET /rosters/1
  def show
    render json: @roster
  end

  # POST /rosters
  def create
    @roster = current_user.rosters.build(roster_params)

    if @roster.save
      render json: @roster, status: :created, location: @roster
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rosters/1
  def update
    if @roster.update(roster_params)
      render json: @roster
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rosters/1
  def destroy
    @roster.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_roster
    @roster = current_user.rosters.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def roster_params
    params.require(:roster).permit(:name, :season, :league_size, :scoring_format)
  end
end
