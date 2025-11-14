rule vln_plot:
	input: input1 = "data/{sample}.csv"
	params: param1 = config["vln_plot"]["param1"]
	output: output1 = "results/violin_plot/{sample}.png"
	script: "../scripts/vln_plot.R"
