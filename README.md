# swift-humidity

Use this package when a value is humidity: relative humidity of air. Start from `Humidity`, a kind of quantity of swift-quantity, and make an amount with `Humidity.amount(_:)`; it is a `Humidity.Value<Scalar>`, a `Tagged<Humidity, Scalar>`.

## Laws

- An amount of humidity is stored in one (a pure number), the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is one, a pure number.
- Amounts of humidity add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
