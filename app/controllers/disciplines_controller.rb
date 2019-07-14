class DisciplinesController < ApplicationController
  def show
    @discipline = Discipline.find(params[:id])
    @relevant_classes = ClassSession.where(discipline: @discipline.name).group_by(&:day)
  end
end
