## Demo of RR/Test::Unit integration

### How it works

- Re-open `Test::Unit::TestCase` and `include RR::Adapters::TestUnit`.
- This includes `RR::Adapters::RRMethods` c.f. `Mocha::API`
- And does an `alias_method_chain` style manoeuvre on `Test::Unit::TestCase#setup` and `Test::Unit::TestCase#teardown` in order to add calls to `RR.reset` and `RR.verify`.
- There is no warning in the documentation that if you define your own `#setup` or `#teardown` methods then you should make sure you call `#super` otherwise RR will not work correctly.