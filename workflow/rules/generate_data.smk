rule generate_data:
    params: seed=config["generate_data"]["seed"]
    output: output="data/{sample}.csv"
    script: "../scripts/generate_data.R"