# Construct a program that will make change for a given dollar amount in cents using the fewest
# number of coins.

module Change
  # Common (?) Euro coins.
  EU_COIN_VALUES = [50, 20, 10, 5, 2, 1]

  # Common US coins.
  US_COIN_VALUES = [25, 10, 5, 1]

  # Returns an array of coin values to make up the given
  # amount of change.
  def self.make_change(amount, coin_values = US_COIN_VALUES)
    change = []
    coin_index = 0
    amount_remaining = amount

    while (amount_remaining > 0) do
      current_value = coin_values[coin_index]
      if (amount_remaining >= current_value) then
        change << current_value
        amount_remaining -= current_value
      else
        coin_index += 1
      end
    end

    change
  end
end