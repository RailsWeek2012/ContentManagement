class UserMailer < ActiveMailer::Base
  # attr_accessible :title, :body
  def confirmation(sent_at = Time.now)
    @subject = 'User Account bei Vereins CMS'
    @body = {}
    @recipents = ''
    @from = 'info@vereinscms.de'
    @sent_on = sent_at
    @headers = {}
  end

  def message(sent_at = Time.now)
    @subject = 'ContactMailer#message'
    @body = {}
    @recipents = ''
    @from = ''
    @sent_on = sent_at
    @headers = {}
  end
end
