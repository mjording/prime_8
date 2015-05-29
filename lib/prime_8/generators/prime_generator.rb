module Prime8::Generators
  class PrimeGenerator
    include Enumerable
    def initialize(ubound = nil)
      @ubound = ubound
    end
    
    def upper_bound=(ubound)
      @ubound = ubound
    end
    
    def upper_bound
      @ubound
    end
    
    def succ
      raise NotImplementedError, "need to define `succ'"
    end

    def next
      raise NotImplementedError, "need to define `next'"
    end

    def rewind
      raise NotImplementedError, "need to define `rewind'"
    end

    def each
      return self.dup unless block_given?
      if @ubound
        last_value = nil
        loop do
          prime = succ
          break last_value if prime > @ubound
          last_value = yield prime
        end
      else
        loop do
          yield succ
        end
      end
    end

    alias with_index each_with_index

    def with_object(obj)
      return enum_for(:with_object) unless block_given?
      each do |prime|
        yield prime, obj
      end
    end
  end
end
