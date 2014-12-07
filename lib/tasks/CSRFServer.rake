namespace :csrf do
  desc "Starts a web server for the attacker minisite"
  task :start do
    puts "Starting the CSRF attacker minisite"
    `pushd ./CSRFTuto-attacker-minisite; python -m SimpleHTTPServer; popd`
  end
end
