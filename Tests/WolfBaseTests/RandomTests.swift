import XCTest
import WolfBase

let testSeed: (UInt64, UInt64, UInt64, UInt64) = (17295166580085024720, 422929670265678780, 5577237070365765850, 7953171132032326923)

class RandomTests: XCTestCase {
    func testXoroshiro256StarStar() {
        var rng = Xoroshiro256StarStar(state: testSeed)
        XCTAssertEqual((0..<100).map { _ in Int.random(in: 0..<100000, using: &rng)}, [5988, 53219, 2961, 86036, 4502, 80080, 19042, 34469, 42811, 99284, 26989, 94179, 3594, 53186, 43984, 87576, 3649, 8728, 9484, 21292, 52099, 28794, 59709, 34261, 67836, 36990, 6588, 43960, 22348, 89690, 30341, 63377, 50819, 98916, 12671, 68353, 41425, 45653, 47147, 47522, 80231, 96851, 25334, 77456, 41132, 49381, 64063, 9460, 31064, 29798, 78378, 48981, 78122, 10704, 86495, 4918, 43062, 36678, 14064, 44457, 87660, 17369, 17348, 97825, 34629, 96415, 46183, 60143, 9062, 92278, 38453, 15708, 46958, 65855, 36493, 80344, 79770, 2819, 53491, 76260, 33807, 46479, 2387, 69780, 69943, 41468, 46832, 61473, 53574, 65052, 13404, 78186, 49742, 39414, 68274, 26324, 72069, 87403, 29973, 52599])
    }
    
    func testWeightedRandomGenerator() {
        var rng = Xoroshiro256StarStar(state: testSeed)
        let weights = [2, 1, 4, 5]
        let generator = WeightedRandomGenerator(weights)
        var counts = Array<Int>(repeating: 0, count: weights.count)
        for _ in 0 ..< 100000 {
            counts[generator.pick(using: &rng)] += 1
        }
        XCTAssertEqual(counts, [16553, 8349, 33291, 41807])
    }
}
