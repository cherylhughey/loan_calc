<!-- * Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions -->

# LoanCalc

Open source web application for generating loan payment values based on user input.

## Usage

```ruby
# Tests / Examples:
let(:loan_calc) { Builder.new}
# personal loan
loan_calc.loan = 1000
loan_calc.time = 12
loan_calc.rate =  0.05
loan_calc.generate # => 85.61

# auto loan
loan_calc.loan = 25000
loan_calc.time = 48
loan_calc.rate =  0.0175
loan_calc.generate # => 539.65

# home equity fixed loan
loan_calc.loan = 100000
loan_calc.time = 180
loan_calc.rate =  0.0425
loan_calc.generate # => 752.28

# mortgage loan
loan_calc.loan = 575000
loan_calc.time = 360
loan_calc.rate =  0.0375
loan_calc.generate # => 2662.91
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marzann/loan_calc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LoanCalc project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/marzann/loan_calc/blob/master/CODE_OF_CONDUCT.md).
