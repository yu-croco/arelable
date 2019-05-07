require 'active_support/lazy_load_hooks'
require "active_record"
require "arelable/version"
require "arelable/gt"
require "arelable/lt"
require "arelable/bw"
require "arelable/matches"
module Arelable
end

ActiveSupport.on_load :active_record do
  ::ActiveRecord::Base.send :include, Arelable::Gt
  ::ActiveRecord::Base.send :include, Arelable::Lt
  ::ActiveRecord::Base.send :include, Arelable::Bw
  ::ActiveRecord::Base.send :include, Arelable::Matches
end
