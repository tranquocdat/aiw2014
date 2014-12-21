class HomeController < ApplicationController
  def index


  end

  def locate
    @locate=Locate.all
  end
  def course
    @course=Course.all
  end
  def rank
    @rank=Rank.all
  end

  def locate_detail
  @locate_detail = University.where(locate_id: (params[:id]))

  end
  def course_detail
    @course_detail = University.where(locate_id: (params[:id]))

  end
  def rank_detail
    @rank_detail = University.where(locate_id: (params[:id]))

  end
end