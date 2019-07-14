class PagesController < ApplicationController
  def home
    @home = true
    @home_banners = HomeBanner.all
    @home_cta_cards = HomeCtaCard.all
  end

  def schedulefees
    @schedulefees = true
    @class_sessions = ClassSession.order(day: :asc, start_time: :asc)
    @days = @class_sessions.map(&:day_string).uniq
    @package_groups = PackageGroup.order(order: :asc).includes(:packages).order(order: :asc)
  end

  def trainers
    @trainers = Trainer.all
  end
end
