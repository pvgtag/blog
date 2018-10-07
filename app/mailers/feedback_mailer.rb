class FeedbackMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_mail
    mail(to: "yandex@yander.ru",
         subject: "New subject",
         body: "Some text",
         from: "abc@abc.ru",
         charset: 'utf-8')
  end

end
