library(tidyverse)

set.seed(snakemake@params[["seed"]])
sz <- parse_number(snakemake@wildcards[["sample"]])

df <- tibble(value = seq_len(sz))

write_csv(x = df, file = snakemake@output[["output"]])

