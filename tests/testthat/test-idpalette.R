test_that(
  "length is correct",
  {
    expect_equal(
      length(idem(20)),
      20
    )
  }
)

test_that(
  "reversing works",
  {
    expect_equal(
      as.character(idem(20, rev = TRUE)),
      rev(idem(20))
    )
  }
)

test_that(
  "aliases work",
  {
    expect_equal(
      idpalette("acefa"),
      acefa()
    )

    expect_equal(
      idpalette("iddu"),
      iddu()
    )

    expect_equal(
      idpalette("idem"),
      idem()
    )
  }
)
