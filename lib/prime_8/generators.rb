require 'prime_8/generators/eratosthenes_generator'

module Prime8
  module Generators
    autoload :EratosthenesGenerator, "generators/eratosthenes_generator"

    def self.default
      EratosthenesGenerator.new
    end
  end
end
