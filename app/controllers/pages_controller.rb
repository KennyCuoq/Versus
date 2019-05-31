class PagesController < ApplicationController
  def home
  end

  def schedulefees
    @class_sessions = ClassSession.order(day: :asc, start_time: :asc)
  end
end
