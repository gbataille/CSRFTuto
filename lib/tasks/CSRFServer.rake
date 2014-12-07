namespace :csrf do
  desc "Starts a web server for the attacker minisite"
  task :start do
    puts "Starting the CSRF attacker minisite"
    `ruby -run -e httpd ./CSRFTuto-attacker-minisite -p 5000`
  end
end
