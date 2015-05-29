require 'spec_helper'

module Prime8
  describe Prime do
    it "is a singleton" do
      expect(Prime8::Prime).to respond_to(:instance)
    end
   
    subject { Prime8::Prime.instance }
    describe "prime?" do
      it "identifies the first set of primes" do
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101].map do |prime|
          expect(subject.prime?(prime)).to eq true
        end
      end
    end
  end
end

