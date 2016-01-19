class UpdatesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @students = Student.all.order(sort_column + " " + sort_direction)
  end


  private

    def sort_column
      Student.column_names.include?(params[:sort]) ? params[:sort] : "lastname"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
