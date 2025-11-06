rule wrangle:
    input: input="data/{sample}.csv"
    params: nrow=config["wrangle"]["nrow"]
    output: output="results/wrangled/{sample}.csv"
    script: "../scripts/wrangle.R" 
