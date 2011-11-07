# skip patches for now
# require 'patches'

ActiveRecord::Base.send :include, Spawner
ActionController::Base.send :include, Spawner
ActiveRecord::Observer.send :include, Spawner
