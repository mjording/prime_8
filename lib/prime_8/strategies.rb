require_relative 'strategies/eratosthenes_sieve_strategy'
require_relative 'strategies/atkin_sieve_strategy'

module Prime8
  module Strategies

    def self.default
      eraatosthenes
    end

    def self.eraatosthenes
      EratosthenesSieveStrategy.instance
    end

    def self.atkin
      AtkinSieveStrategy.instance
    end
  end
end
