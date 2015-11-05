Gibbon::API.api_key = ENV["MAILCHIMP_API_KEY"]
Gibbon::API.timeout = 15
Gibbon::API.throws_exceptions = true
puts "MailChimp API key: #{Gibbon::API.api_key}" # temporary
