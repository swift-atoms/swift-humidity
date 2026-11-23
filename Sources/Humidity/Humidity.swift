/// Humidity: relative humidity of air, stored in one (a pure number).
public enum Humidity {}

extension Humidity: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension() }
}

extension Humidity {
    /// An amount of humidity, its scalar in one (a pure number).
    public typealias Value<Scalar> = Tagged<Humidity, Scalar>
}
