require 'active_record'

ActiveRecord::Base.establish_connection({
  :adapter => "postgresql",
  :host => "localhost",
  :username => "andrewfritz",#changethis
  :database => "wordplay"
  })

  ActiveRecord::Base.logger = Logger.new(STDOUT)  
