require 'prime_8/version'
require 'prime_8/report_table'
require 'prime_8/strategies'
require 'prime_8/generators'
require 'prime_8/multiplication'

module Prime8
  autoload :Generators, "prime_8/generators"
  autoload :Strategies, "prime_8/strategies"

  class Prime
    include Singleton
    
    def prime?(value, generator = Generators.default)
      return false if value < 2
      generator.each do |num|
        q,r = value.divmod num
        return true if q < num
        return false if r == 0
      end
    end

  end
end
