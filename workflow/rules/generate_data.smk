rule generate_data:
	params: n = config["generate_data"]["n"]
	output: out1 = "data/{sample}.csv"
	script: "../scripts/generate_data.R"
