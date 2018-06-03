class DashboardController < ApplicationController
  def index
    @journalists = Journalist.all
  end
end
