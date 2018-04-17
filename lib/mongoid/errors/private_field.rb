# encoding: utf-8
module Mongoid
  module Errors

    # This error is raised when trying to set a value in Mongoid for a private field
    class PrivateField < MongoidError

      # Create the new error.
      #
      # @example Instantiate the error.
      #   PrivateField.new(Person, 'gender')
      #
      # @param [ Class ]          klass The model class.
      # @param [ String, Symbol ] name The name of the attribute.
      #
      # @since 7.0.0
      def initialize(klass, name)
        super compose_message('private_field', { klass: klass.name, name: name })
      end
    end
  end
end
