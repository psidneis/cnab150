module Cnab150
  # The Regisry class is responsible to transform the string into a object
  # and is the public interface.
  class Registry
    def initialize(line, registry, parse = Cnab150::Parser)
      @line = line
      @registry = registry
      @parse = parse
    end

    def to_hash
      @_r ||= values.to_hash(@registry.mapping.keys)
    end

    def raw
      @line
    end

    private

    def values
      @_v ||= @parse.build(@line, @registry.layout)
    end

    def method_missing(method)
      return to_hash[method] if to_hash.key?(method.to_sym)
      super
    end
  end
end
