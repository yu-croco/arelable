require 'logger'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  database: 'areable_test',
  username: 'root',
  password: ''
)
ActiveRecord::Base.logger = Logger.new(STDOUT)
