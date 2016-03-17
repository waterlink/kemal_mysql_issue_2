require "./kemal_mysql_issue_2/*"

module KemalMysqlIssue2
end

require "kemal"
require "kemal-mysql"

CONN_OPTS = {
  "host" => "127.0.0.1",
  "user" => "kemal_mysql",
  "password" => "",
  "db" => "kemal_mysql_test"
}

mysql_connect CONN_OPTS, 25, 0.1

# Make sure to yield `env`.
get "/" do |env|
  env.response.content_type = "application/json"
  users = conn.query("SELECT * FROM users")
  # Release the connection after you are done with exec
  release
  # Renders the users as JSON
  users
end
