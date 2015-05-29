require 'command_line_reporter'
require_relative 'multiplication'
require_relative 'strategies'

module Prime8
  class ReportTable
    include CommandLineReporter
    include Multiplication

    attr_reader :primes
    def initialize(count=10)
      @count = count
      @primes = Prime8::Strategies.default.get_through_nth_prime(@count)
    end

    def table_headings
      [""]+@primes
    end

    def row_datum
      table_rows(@primes)
    end

    def run
      table :border => true do
        row :header => true do 
          table_headings.each do |prime|
            column(prime.to_s, :align => 'center', :width => 5, :color => 'blue')
          end
        end
        row_datum.each do |row_data|
          row do
            column(row_data.slice!(0).to_s, :align => 'center', :width => 5, :bold => true, :color => 'blue')
          end
          row_data.each do |rd|
            column(rd.to_s, :align => 'center', :width => 5)
          end
        end
      end
    end
  end
end
            #column(row_data.slice!(1).to_s)
            #row_data.each do |column_data|
