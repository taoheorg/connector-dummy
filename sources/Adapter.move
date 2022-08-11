// Licenced under CC0 1.0
// Authors: Ville Sundell / Solarius Intellectual Properties Ky

/// A dummy connector for simulating a blockchain
module Connector::Connector {

    /// Return a timestamp
    public fun current_timestamp(): u64 {
        123
    }
    spec current_timestamp {
        aborts_if false;
        ensures result == 123;
    }
    #[test]
    fun test_current_timestamp() {
        let timestamp = current_timestamp();
        assert!(timestamp == 123, 1);
    }
}