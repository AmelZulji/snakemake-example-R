rule wrangle:
    input: input="data/{sample}.csv", img="workflow/envs/singularity.sif"
    params: nrow=config["wrangle"]["nrow"]
    output: output="results/wrangled/{sample}.csv"
    container: "workflow/envs/singularity.sif"
    script: "../scripts/wrangle.R" 
