rule plot:
    input: input="results/wrangled/{sample}.csv"
    params: color=config["plot"]["color"]
    output: output=report("results/plot/{sample}.png") 
    script: "../scripts/plot.R" 
