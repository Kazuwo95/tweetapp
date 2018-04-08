class BlogMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def create_blog_email(blog)
    @blog = blog
    @url = 'https://agile-cove-84334.herokuapp.com'
    mail(to: blog.user.email, subject: 'Monologueに独り言を投稿しました！')
  end

end
