## Some simple tests for 'ochRe'

## Check that every palette has a name (otherwise, stuff doesn't work)
expect_true(
    all(nchar(names(ochre_palettes)))
)

