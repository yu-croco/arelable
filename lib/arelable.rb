require "active_record"
require "arelable/version"
require "arelable/gt"
require "arelable/lt"
require "arelable/bw"
require "arelable/matches"
module Arelable
end

class ActiveRecord::Base
   include Arelable::Gt
   include Arelable::Lt
   include Arelable::Bw
   include Arelable::Matches
end
