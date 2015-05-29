require 'spec_helper'

module Prime8
  describe Generators do
    describe ".default" do
      it "returns a generator object" do
        expect(Prime8::Generators.default).to respond_to(:succ)
      end
    end
  end
end

