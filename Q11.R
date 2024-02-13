test_that("german_cities contains the correct number of cities", {
  expect_equal(length(german_cities), 6)
})

test_that("german_cities contains only the specific cities", {
  expect_equal(sort(german_cities), sort(c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")))
})

test_that("german_cities contains no duplicate cities", {
  expect_true(length(unique(german_cities)) == length(german_cities))
})
