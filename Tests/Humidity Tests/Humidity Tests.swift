import Humidity
import Testing

enum `Humidity Tests` {}

extension `Humidity Tests` {
    @Suite struct `Humidity is a kind of quantity in one (a pure number)` {
        @Test func `Its dimension is one`() {
            #expect(Humidity.dimension == Quantity.Dimension())
        }

        @Test func `An amount given in one (a pure number) keeps its scalar`() {
            #expect(Humidity.amount(2.5).underlying == 2.5)
        }
    }
}
