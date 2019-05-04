module Arelable
  module Bw
    extend ActiveSupport::Concern

    module ClassMethods
      def bw(column, value = [])
        where("#{column} BETWEEN ? AND ?", value.min, value.max)
      end
    end
  end
end
