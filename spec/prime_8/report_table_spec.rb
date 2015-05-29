require 'spec_helper'

module Prime8
  describe ReportTable do
    before(:each) do
      @report_table = ReportTable.new do 
        include CommandLineReporter
      end
    end

    it "should include PrimeNumbers and Multiplication modules" do
      expect(@report_table).to respond_to(:primes)
      expect(@report_table).to respond_to(:table_rows)
    end

    describe "table_headings" do
      it "should return a blank padded 10 deep prime array" do
        expect(@report_table.table_headings.size).to eq 11
      end
    end


    describe "run" do
      before do
        allow(CommandLineReporter).to receive(:table).with(any_args).and_return({output: "to screen"}) 
      end
      it "should call the table setup" do
        allow(@report_table).to receive(:puts)
        expect(@report_table).to receive(:table).once
        @report_table.table { }
      end
    end
  end
end
