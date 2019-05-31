class PagesController < ApplicationController
  def home
  end

  def schedulefees
    @class_sessions = ClassSession.all
  end
end
