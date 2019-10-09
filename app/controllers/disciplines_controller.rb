class DisciplinesController < ApplicationController
  def show
    @discipline = Discipline.friendly.find(params[:id])
    @relevant_classes = ClassSession.where("discipline like ?", "%#{@discipline.name}%").order(start_time: :asc).group_by(&:day).sort_by{|day| day}
  end
end
