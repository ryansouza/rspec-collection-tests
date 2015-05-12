require 'rspec'

A_COLLECTION = %w[a b c d e]

RSpec.describe "generating tests from a collection" do

  A_COLLECTION.each do |item|
    it "tests item #{item}", collection: item do
      expect(A_COLLECTION).to include item
    end
  end

end
