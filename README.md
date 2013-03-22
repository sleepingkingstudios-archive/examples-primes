# How To Use

## Interactive

1.  Clone the repository onto your local environment.
2.  From the top-level directory in the repository, enter ``ruby main.rb``
3.  Enter an integer greater than or equal to 2.

## As A Library

1.  Copy the file lib/ext/integer.rb into your source path.
2.  Add a ``require`` statement importing integer.rb
3.  Send ``:prime\_factors`` to any Integer for a list of that integer's prime
    factors in ascending order.

# How To Test

1.  Install RSpec using ``bundle`` or your preferred Gem manager.
2.  From the top-level directory in the repository, enter ``rspec``
