Dir[File.dirname(__FILE__) + '/layout/*.rb'].each { |file| require file }

module Cnab150
  # The Layout module is responsible of build the appropriate layout.
  module Layout
    def self.build(type)
      Cnab150::Layout.const_get(type.upcase).new
    rescue NameError
      raise Cnab150::Errors::LayoutNotImplementedError
    end
  end
end
