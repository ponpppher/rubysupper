class ContactMailer < ApplicationMailer
  def contact_mail(feed, user)
    @feed = feed
    @user = user
    mail to:@user.email, subject:"please check post in imagefeed"
  end
end
