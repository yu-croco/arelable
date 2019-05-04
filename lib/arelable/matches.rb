module Arelable
  module Matches
    extend ActiveSupport::Concern

    module ClassMethods
      def all_matches(column, value)
        where("#{column} LIKE ?", "%#{value}%")
      end

      def forward_matches(column, value)
        where("#{column} LIKE ?", "#{value}%")
      end

      def backward_matches(column, value)
        where("#{column} LIKE ?", "%#{value}")
      end
    end
  end
end

