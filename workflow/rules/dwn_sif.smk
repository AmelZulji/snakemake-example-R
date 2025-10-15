rule dwn_sif:
    output: "workflow/envs/singularity.sif"
    shell:
        """
        wget "https://heibox.uni-heidelberg.de/f/1f548c7f931c497682fc/?dl=1" -O {output}
        """
