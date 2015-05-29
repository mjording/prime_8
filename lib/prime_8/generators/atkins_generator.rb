require 'prime_8/generators/prime_generator'
require 'prime_8/strategies'

module Prime8::Generators
  class AtkinsGenerator < PrimeGenerator
    def initialize
      @last_prime_index = -1
      @strategy = Prime8::Strategies.atkins
      super
    end

    def succ
      @last_prime_index += 1
      @strategy.get_nth_prime(@last_prime_index)
    end
    def rewind
      initialize
    end
    alias next succ
  end

end

