Dir[File.dirname(__FILE__) + '/layout/*.rb'].each {|file| require file }
require 'cnab150/errors/layout_not_implemented_error'

module Cnab150
  module Layout
    def self.build(type)
      case
      when type.eql?('A')
        Cnab150::Layout::A
      when type.eql?('Z')
        Cnab150::Layout::Z
      when type.eql?('G')
        Cnab150::Layout::G
      else
        fail Cnab150::Errors::LayoutNotImplementedError
      end.new
    end
  end
end
