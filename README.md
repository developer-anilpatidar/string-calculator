# String Calculator — TDD Kata

A Ruby implementation of the **String Calculator TDD Kata**, built incrementally using **Test-Driven Development (TDD)** with RSpec.

## Tech Stack

- Ruby
- RSpec

## Requirements Covered

The calculator supports:

- Empty string returns `0`
- Single number
- Two comma-separated numbers
- Multiple comma-separated numbers
- Newline-separated numbers
- Custom delimiters
- Custom delimiters of any length
- Multiple custom delimiters
- Multiple delimiters with multiple characters
- Negative number validation
- Reporting multiple negative numbers
- Ignoring numbers greater than `1000`

## Running the Project

Install dependencies:

```bash
bundle install
```

Run the test suite:

```bash
bundle exec rspec
```

## TDD Approach

The implementation was developed incrementally using the **Red → Green** cycle.

1. **Red** — Write a test for a new behavior and confirm it fails.
2. **Green** — Implement the simplest solution required to make the test pass.

## Test Coverage

The project uses RSpec to verify each supported behavior and to prevent regressions as new functionality is introduced.
