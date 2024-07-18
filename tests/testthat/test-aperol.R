test_that("tipsy works", {
  withr::local_seed(1)
  expect_equal(tipsy(), "tenderly are You impeccable!")
  expect_equal(tipsy(2, "You are ${creating} a ${adverb} ${adjective} ${rpackage}"), "You deliberately initiating a code first-rate are")
})

test_that("drunk works", {
  withr::local_seed(1)
  expect_equal(drunk(), "You are tenderly tenderly impeccable!")
  expect_equal(drunk(2, 2:3), "You are first-rate! deliberately You first-rate! first-rate!")
  expect_equal(drunk(2, 2, "You are ${creating} a ${adverb} ${adjective} ${rpackage}"), "are a project You perfectly composing are perfectly sensational")
})
