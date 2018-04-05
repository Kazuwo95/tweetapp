class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "yyy.sol@ezweb.ne.jp", subject: "お問合わせの確認メール"
  end
end
