# Tag generated rspec tests

Using tags makes it easy to run a specific test when line numbering isn't unique enough. See [test.rb](test.rb) for full code.

#### Running all tests

```console
$ bundle exec rspec test.rb 

generating tests from a collection
  tests item a
  tests item b
  tests item c
  tests item d
  tests item e

Finished in 0.00197 seconds (files took 0.10781 seconds to load)
5 examples, 0 failures
```

#### Running a specific test

```console
$ bundle exec rspec test.rb --tag collection:d
Run options: include {:collection=>"d"}

generating tests from a collection
  tests item d

Finished in 0.00135 seconds (files took 0.11199 seconds to load)
1 example, 0 failures
```

### Other methods
Upcoming versions of rspec will allow specifying examples by an "id" and output rspec commands with this.

```console
# to run example "generating tests from a collection it tests item d"
$ bundle exec rspec test.rb[1:4] # first group 4th defind example
```

## Future work

I think it would be neat if there was built-in support for defining examples over a collection. Maybe something like...

```rb
A_COLLECTION = %w[a b c d e]

RSpec.describe "generating tests" do

  describes "from a collection", A_COLLECTION do |item|
    it "tests item #{item}" do
      expect(A_COLLECTION).to include item
    end
  end

end
```
