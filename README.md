# axial-seamount-euks

## Set-up working environment
```
conda env create --name axial-eukheist --file environmentv0.2.yaml

# Enter conda environment
conda activate axial-eukheist
```
* conda v4.7.10
* snakemake v5.6.0

### Location and file structure for input metagenomic and metatranscriptomic data

Pipeline requires metatranscriptome and metagenome reads to be placed in their own directories.

## Oct 28, 2019 update
_Input files should be trimmed_ - trimming and fastqc/multiqc steps removed from this pipeline


# Sourmash output:
In a directory with all sourmash computed signatures, I generated a .csv file comparison for plotting.  
https://sourmash.readthedocs.io/en/latest/sourmash-examples.html

```
sourmash compare -k 31 *.sig --csv metaT_compare_mash.csv
```

Processing sourmash output in R
