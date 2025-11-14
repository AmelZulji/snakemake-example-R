snakemake <- create_snakemake_object(
    input = list(input1 = "data/sti_1.csv"),
    params = list(param1 = "orange"),
    output = list(output1 = "results/violin_plot/sti_1.png")
)


library(tidyverse)

df <- read_csv(snakemake@input$input1)
p <- df |> ggplot(aes(x = var1)) + geom_histogram(fill = snakemake@params$param1)
ggsave(snakemake@output$output1, plot = p, width = 3, height = 3)
