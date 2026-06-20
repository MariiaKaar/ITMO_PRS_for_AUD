#!/bin/bash

set -e

INPUT=$1
OUTDIR=$2

if [ -z "$INPUT" ] || [ -z "$OUTDIR" ]; then
  echo "Usage: ./run_prs_pipeline.sh <plink_prefix> <pgs_output_dir>"
  echo "Example: ./run_prs_pipeline.sh imputed ~/PRS_kravchenko/results"
  exit 1
fi

echo "Input dataset: $INPUT"
echo "PGS output directory: $OUTDIR"

echo "STEP 1: SNP missingness filter"
plink2 --bfile $INPUT \
--geno 0.1 \
--make-bed \
--out temp1


echo "STEP 2: Individual missingness filter"
plink2 --bfile temp1 \
--mind 0.1 \
--make-bed \
--out temp2


echo "STEP 3: MAF filter"
plink2 --bfile temp2 \
--maf 0.01 \
--make-bed \
--out temp3


echo "STEP 4: Hardy-Weinberg filter"
plink2 --bfile temp3 \
--hwe 1e-6 \
--make-bed \
--out temp4



echo "STEP 7: Run PGS calculation"
nextflow run pgscatalog/pgsc_calc \
-profile docker \
--input ~/PRS_kravchenko/samplesheet.csv \
--pgs_id PGS002809 \
--target_build GRCh37 \
--outdir $OUTDIR


echo "Pipeline finished successfully"
