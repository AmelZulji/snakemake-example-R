rule vln_plot:
	input: input1 = "data/{sample}.csv"
	params: param1 = config["vln_plot"]["param1"]
	output: output1 = report("results/violin_plot/{sample}.png", category = "violin", caption = "../report/violin.rst")
	script: "../scripts/vln_plot.R"
