import io
import quoter

fn assert_equal(want, got) {
    if $want != $got {
        io_println("want[%s] != got[%s]", $want, $got)
    }
}

fn test_simple_paths() {
    assert_equal("test", quoter("test"))
}

fn test_quoteable_paths() {
    quoteables = ("[" "]" " ")

    for quoteable in $quoteables {
        input <= format("start%send", $quoteable)
        want <= format("\"%s\"", $input)
        assert_equal($want, quoter($input))
    }
}

test_simple_paths()
test_quoteable_paths()
