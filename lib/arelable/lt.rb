module Arelable
  module Lt
    extend ActiveSupport::Concern
    module ClassMethods
      def lt(column, value)
        where("#{column} < ?", value)
      end

      def lteq(column, value)
        where("#{column} <= ?", value)
      end
    end
  end
end
