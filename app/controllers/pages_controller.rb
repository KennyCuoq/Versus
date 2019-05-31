class PagesController < ApplicationController
  def home
  end

  def schedulefees
    @disciplines = Discipline.all
  end
end
