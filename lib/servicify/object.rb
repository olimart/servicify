module Servicify
  class Object
    class << self
      def call(*arg, **opts)
        new(*arg, **opts).constructor
      end
    end

    attr_reader :result

    def constructor
      @result = call
      self
    end

    def success?
      !failure?
    end

    def failure?
      errors.any?
    end

    def errors
      @errors ||= Servicify::Common::Errors.new
    end

    def call
      fail NotImplementedError unless defined?(super)
    end
  end
end
