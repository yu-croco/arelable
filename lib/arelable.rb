require "active_record"
require "arelable/version"

module Arelable
  extend ActiveSupport::Concern

  class_methods do
    def gt(column, value)
      where("#{column.to_s} > ?", value)
    end

    def gteq(column, value)
      where("#{column.to_s} >= ?", value)
    end

    def lt(column, value)
      where("#{column.to_s} < ?", value)
    end

    def lteq(column, value)
      where("#{column.to_s} <= ?", value)
    end

    def bw(column, value=[])
      where("#{column.to_s} BETWEEN ? AND ?", value.first, value.last)
    end

    def matches(column, value)
      where("#{column.to_s} LIKE ?", "%#{value}%")
    end
  end
end

ActiveRecord::Base.extend Arelable
