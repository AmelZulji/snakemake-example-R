if (interactive()) {
  snakemake <- create_snakemake_object(
    input = list(in1 = "data/sti_1.csv"),
    params = list(dot_col = "blue"),
    output = list(out1 = "results/scater_plot/sti_1.png")
  )
}

library(readr)
library(ggplot2)

df <- read_csv(snakemake@input[["in1"]])

p <- df |> ggplot(aes(x = var1, y = var2)) + geom_point(colour = snakemake@params[["dot_col"]])

ggsave(filename = snakemake@output[["out1"]], plot = p, width = 3, height = 3)
