class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_recipe.subject
  #
  def sendmail_recipe(recipe)
      @recipe = recipe

    mail to: "m121mst@yahoo.co.jp",
         subject: '【HatchRoom】Recipeが投稿されました'
  end

  def sendmail_contact(contact)
      @contact = contact
      mail to: @contact.email,
           subject: '【HatchRoom】問合せが完了しました'
  end

  def sendmail_contactadmin(contact)
      @contact = contact
      mail to: "m121mst@yahoo.co.jp",
           subject: '【HatchRoom】問合せを受けました'
  end


end
