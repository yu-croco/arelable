require "active_record"
require "arelable/version"

module Arelable
  extend ActiveSupport::Concern

  class_methods do
    def gt(column, value)
      where("#{column} > ?", value)
    end

    def gteq(column, value)
      where("#{column} >= ?", value)
    end

    def lt(column, value)
      where("#{column} < ?", value)
    end

    def lteq(column, value)
      where("#{column} <= ?", value)
    end

    def bw(column, value = [])
      where("#{column} BETWEEN ? AND ?", value.min, value.max)
    end

    def matches(column, value)
      where("#{column} LIKE ?", "%#{value}%")
    end
  end
end

ActiveRecord::Base.extend Arelable
