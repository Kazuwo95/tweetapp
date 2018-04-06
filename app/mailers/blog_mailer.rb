class BlogMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def create_blog_email(blog,user)
    @blog = blog
    @user = user
    @url = 'https://agile-cove-84334.herokuapp.com'
    mail(to: user.email, subject: 'Monologueに独り言を投稿しました！')
  end

end
