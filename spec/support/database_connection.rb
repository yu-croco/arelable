require 'logger'

ActiveRecord::Base.establish_connection(
  host:    "127.0.0.1",
  adapter: 'mysql2',
  database: 'areable_test',
  username: 'root',
  password: ''
)
ActiveRecord::Base.logger = Logger.new(STDOUT)
