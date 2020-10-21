class PublicController < ApplicationController
  def index
    @projects = Project.all
  end

  def detail
  end
end
