fn quoter(path) {
    quoteables = ("[" "]" " ")

    for char in $path {
        for quoteable in $quoteables {
            if $quoteable == $char {
                return format("\"%s\"", $path)
            }
        }
    }
    return $path
}
