## Some simple tests for 'ochRe'

## Check that every palette has a name (otherwise, stuff doesn't work)
expect_true(
    all(nchar(names(ochre_palettes)))
)

## This should just not fail (not sure how to test that??)
viz_palette(ochre_palettes$nolan_ned)
