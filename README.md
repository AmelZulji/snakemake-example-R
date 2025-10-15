# snakemake-example-R
Example workflow orchestrating simple R scripts with following features: 

* it uses `script:` directive which makes deployment of the workflow easier.
* it flags parts of the output for inclusion in the report using `report()` flag.

The workflow can be deployed as follows

```
snakedeploy deploy-workflow https://github.com/AmelZulji/snakemake-example-R.git . --branch main
```

> [!NOTE]
> In order to deploy the workflow `snakedeploy` should be installed. 
