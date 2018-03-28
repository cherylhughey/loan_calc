# LoanCalc

Open source web application for generating fixed rate loan payments, based on user input.

## Dependencies

This project was built using Ruby, version 2.4.0, along with Rails, version 5.1.5.
For Ruby installation or update, please see the following documentation: https://github.com/postmodern/ruby-install.
For Rails installation, please follow this guide: http://installrails.com.
For Rails update, please see: http://edgeguides.rubyonrails.org/upgrading_ruby_on_rails.html.

## Configuration

You can clone the project here: https://github.com/marzann/loan_calc.git.

## Usage

Tests have been set up based on the rspec gem. Please see examples below.

To run tests, make sure you are in the project's directory, and issue the following command: rspec spec.

Additional information on rspec can be found here: http://rspec.info.

```ruby

get :index
expect(response).to render_template("index")

let(:calculator) { Calculator.new}
# personal loan
calculator.loan = 1000
calculator.time = 12
calculator.rate =  0.05
calculator.generate # => 85.61

# auto loan
calculator.loan = 25000
calculator.time = 48
calculator.rate =  0.0175
calculator.generate # => 539.65

# home equity fixed loan
calculator.loan = 100000
calculator.time = 180
calculator.rate =  0.0425
calculator.generate # => 752.28

# mortgage loan
calculator.loan = 575000
calculator.time = 360
calculator.rate =  0.0375
calculator.generate # => 2662.91
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marzann/loan_calc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct, listed below.

This project is a starting point. I envision two separate options that can grow from it:

1) A library of different type of calculators, eg. standard, tax, tip, GPA, mortgage, etc. A user would simply choose from the app the type they wish to use, and perform calculations. A developer would be able to adapt part or entire library to their needs.

2) A financial information and services site, where users can obtain access to current rates, and useful resources.

Contributions to either option are welcome!

## License

This app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LoanCalc project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/marzann/loan_calc/blob/master/CODE_OF_CONDUCT.md).
