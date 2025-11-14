if (interactive()) {
  snakemake <- create_snakemake_object(
    input = list(in1 = "data/sti_1.csv"),
    params = list(bar_col = "blue", bar_fill = "green2",nbins = 10),
    output = list(out1 = "results/histogram/sti_1.png")
  )
}

library(readr)
library(ggplot2)

df <- read_csv(snakemake@input[["in1"]])
p <- df |> ggplot(aes(x = var1)) + geom_histogram(color = snakemake@params$bar_col, bins = snakemake@params$nbins,fill = snakemake@params$bar_fill)
ggsave(filename = snakemake@output[["out1"]], plot = p, width = 3, height = 3)
