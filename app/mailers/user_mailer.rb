class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def email(first, last, address, subjectP, message)
    @url  = 'http://example.com/login'
    mail(to: 'ktp925@gmail.com', subject: "TEST", body: first + " " + last + " " + address + " " + message)
  end

end
