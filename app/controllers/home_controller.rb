class HomeController < ApplicationController
  def index
    FeedbackMailer.new.send_mail.deliver
  end
end
