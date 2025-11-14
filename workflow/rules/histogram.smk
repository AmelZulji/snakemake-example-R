rule histogram:
	input: in1 = "data/{sample}.csv"
	params: bar_col = config["histogram"]["bar_col"], bar_fill = config["histogram"]["bar_fill"], nbins = config["histogram"]["nbins"]
	output: out1 = "results/histogram/{sample}.png"
	script: "../scripts/histogram.R"
