require 'spec_helper'

module Prime8
  describe Multiplication do
    let :use_class do
      Class.new do
        include Multiplication
      end
    end
    let(:array){ [2, 3, 5, 7, 11, 13] }
    subject { use_class.new.table_rows(array) }
    
    describe "table_rows" do
      it "should return an array of header padded prime columns" do
        expect(subject.size).to eq array.size
        expect(subject.first.size).to eq array.size + 1
      end
    end
  end
end
