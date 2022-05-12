#!/bin/bash
#
#SBATCH --mail-user=zas37@drexel.edu
#SBATCH --nodes=1
#SBATCH --cpus-per-task=48
#SBATCH --time=48:00:00
#SBATCH --mem=1000GB
#SBATCH --partition=bm

module load nextflow
export NXF_SINGULARITY_CACHEDIR=/ifs/groups/eces450650Grp/ECES450650_SP22/zas37/singularity/cache
nextflow run nf-core/mag -r 2.1.0 -profile singularity -c /beegfs/scratch/zas37/tutorial8/custom.config --input /ifs/groups/eces450650Grp/ECES450650_SP22/data/CAMISIM_hybrid/samplesheet.CAMISIM_hybrid.csv --outdir /ifs/groups/eces450650Grp/ECES450650_SP22/zas37/results --coassemble_group --binning_map_mode all --max_cpus 48 --max_memory 1000.GB --spades_fix_cpus 40 --spadeshybrid_fix_cpus 40 --skip_megahit
