class DisciplinesController < ApplicationController
  def show
    @discipline = Discipline.find(params[:id])
  end
end
