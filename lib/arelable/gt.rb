module Arelable
  module Gt
    extend ActiveSupport::Concern

    module ClassMethods
      def gt(column, value)
        where("#{column} > ?", value)
      end

      def gteq(column, value)
        where("#{column} >= ?", value)
      end
    end
  end
end
