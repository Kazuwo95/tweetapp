class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "kazuwo95@gmail.com", subject: "お問合わせの確認メール"
  end
end
