if (interactive()) {
  snakemake <- create_snakemake_object(
  output = list(out1 = "data/sti_1.csv"),
  params = list(n = 10000)
  )
}


library(tibble, quietly = TRUE)
library(readr, quietly = TRUE)

sti <- basename(snakemake@output$out1) |> tools::file_path_sans_ext()

df <- tibble(study_index = sti, var1 = rnorm(snakemake@params$n), var2 = rnorm(snakemake@params$n))
write_csv(x = df, file = snakemake@output[["out1"]])

