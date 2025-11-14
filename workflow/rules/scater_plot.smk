rule scater_plot:
	input: in1 = "data/{sample}.csv"
	params: dot_col = config["scater_plot"]["dot_col"]
	output: out1 = "results/scater_plot/{sample}.png"
	script: "../scripts/scater_plot.R"
