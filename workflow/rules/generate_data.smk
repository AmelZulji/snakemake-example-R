rule generate_data:
    input: img="workflow/envs/singularity.sif"
    params: seed=config["generate_data"]["seed"]
    output: output="data/{sample}.csv"
    script: "../scripts/generate_data.R"