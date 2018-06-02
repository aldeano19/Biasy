class ApplicationController < ActionController::Base
  def welcome
    render html: "hello, world!"
  end
end
