if (interactive()) {
  snakemake <- create_snakemake_object(
    input = list(input1 = "data/sti_1.csv"),
    params = list(param1 = "orange"),
    output = list(output1 = "results/violin_plot/sti_1.png")
  )
}


library(readr)
library(ggplot2)

df <- read_csv(snakemake@input$input1, show_col_types = FALSE)
p <- df |> ggplot(aes(x = study_index, y = var1)) + geom_violin(fill = snakemake@params$param1) + geom_jitter(width = 0.1, size = 0.2)
ggsave(snakemake@output$output1, plot = p, width = 3, height = 3)
