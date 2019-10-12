snakemake   \
        --jobs 40 --use-conda  \
        --cluster-config cluster.yaml \
        --cluster "sbatch --parsable --partition={cluster.queue} \
        --job-name=TARA.{rule}.{wildcards} --mem={cluster.mem}gb \
        --time={cluster.time} --ntasks={cluster.threads} --nodes={cluster.nodes}" -np

