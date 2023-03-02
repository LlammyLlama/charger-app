require "active_record"
require "sqlite3"
require "yaml"
require "rails"

# config.autoload_paths += %W({config.root}/app)

# This is some boilerplate code to read the config/database.yml file
# And connect to the database
config_path = File.join(File.dirname(__FILE__), "database.yml")
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:development)

# Set a logger so that you can view the SQL actually performed by ActiveRecord
# logger = Logger.new($stdout)
# logger.formatter = proc do |severity, datetime, progname, msg|
#   "#{msg}\n"
# end
# ActiveRecord::Base.logger = logger

# Load all models!
Dir["#{__dir__}/../app/models/*.rb"].each { |file| require file }

require_relative '../router'
require_relative '../app/controllers/charge_sessions_controller'

charge_sessions_controller = ChargeSessionsController.new

router = Router.new(charge_sessions_controller)

router.run
