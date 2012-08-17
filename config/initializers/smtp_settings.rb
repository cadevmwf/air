ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "emilyellison986@gmail.com",
  :password             => "my_password",
  :authentication       => "plain",
  :enable_starttls_auto => true
}