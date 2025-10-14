library(readr)
library(dplyr)

df <- read_csv(snakemake@input[["input"]])

df <- 
  df |> mutate(
  x = rep(seq_len(snakemake@params[["nrow"]]), length.out = nrow(df)),
  y = ((seq_len(nrow(df)) - 1) %/% snakemake@params[["nrow"]])
  )

readr::write_csv(x = df, file = snakemake@output[["output"]])
