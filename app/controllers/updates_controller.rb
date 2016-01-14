class UpdatesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @updates = Update.all.order(sort_column + " " + sort_direction)
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to updates_path
    else
      render :new
    end
  end

  private
    def update_params
      params.require(:update).permit(:lastname, :firstname, :age, :gender, :cohort, :internship, :company)
    end

    def sort_column
      Update.column_names.include?(params[:sort]) ? params[:sort] : "lastname"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
