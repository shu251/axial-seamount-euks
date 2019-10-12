snakemake   \
        --jobs 100 --use-conda  \
        --cluster-config cluster.yaml \
	--cluster "sbatch --parsable --partition={cluster.queue} \
	--job-name=heist.{rule}.{wildcards} --mem={cluster.mem}gb \
	--time={cluster.time} --ntasks={cluster.threads} --nodes={cluster.nodes}"

