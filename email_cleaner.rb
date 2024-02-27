require 'mail'

# Email account settings
options = {
  address:              'smtp.gmail.com',
  port:                 587,
  user_name:            'your_email@gmail.com',
  password:             'your_password',
  authentication:       'plain',
  enable_starttls_auto: true
}

Mail.defaults do
  delivery_method :smtp, options
  retriever_method :imap, {
    address:    'imap.gmail.com',
    port:       993,
    user_name:  'your_email@gmail.com',
    password:   'your_password',
    enable_ssl: true
  }
end

# Check inbox for matching emails
emails = Mail.find(keys: ['NOT', 'SEEN'], read_only: false)
emails.each do |email|
  if email.subject.include?("Help Request")
    # Define your reply
    reply = Mail.new do
      to      email.from
      from    'your_email@gmail.com'
      subject "Re: #{email.subject}"
      body    "Thank you for your email. We have received your request and will get back to you within 24 hours."
    end

    # Send the reply
    reply.deliver!
    puts "Replied to #{email.from}"
    
    # Optionally, mark the email as read or add other logic here
  end
end
