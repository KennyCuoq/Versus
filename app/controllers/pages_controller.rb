class PagesController < ApplicationController
  def home
    @home_banners = HomeBanner.all
  end

  def schedulefees
    @class_sessions = ClassSession.order(day: :asc, start_time: :asc)
    @package_groups = PackageGroup.order(order: :asc).includes(:packages).order(order: :asc)
  end
end
