require 'logger'

ActiveRecord::Base.establish_connection(
  host:    "localhost",
  adapter: 'mysql2',
  database: 'areable_test',
  username: 'root',
  password: ''
)
ActiveRecord::Base.logger = Logger.new(STDOUT)
