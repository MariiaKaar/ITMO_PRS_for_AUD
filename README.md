# Application of polygenic risk scores for predicting the development of alcohol use disorder
Author: Mariia Kravchenko — ITMO student  
Supervisor: Dmitrii Kharitonov (Genotek), Artem Leushin (Genotek)  
Contact: mariakr55@mail.ru

**Alcohol use disorder (AUD)** is a complex multifactorial condition influenced by both genetic and environmental factors. Recent advances in genome-wide association studies (GWAS) have enabled the identification of genetic variants associated with AUD and facilitated the development of polygenic risk scores (PRS), which aggregate the effects of numerous variants into a single measure of genetic predisposition. This project aims to evaluate the predictive performance of PRS for AUD risk assessment, develop risk prediction models combining genetic and demographic factors, and explore the potential application of PRS in pharmacogenetics for personalized treatment outcome prediction.

## Materials 
### Сohort:
- Database of Genotek: 152 006 individuals
- After filtration: 36503 individuals

### Phenotype construction:
- Alcohol use was assessed using the AUDIT questionnaire
- East Slavic ancestry
- Adults ≥ 21 years
- Cases : AUDIT >= 14 
- Controls: AUDIT < 14
### Polygenic risk score
- 13 external PRS from the [PGS Catalog](https://www.pgscatalog.org/)
## Methods
### GWAS
- [PLINK v2.0](https://www.cog-genomics.org/plink/2.0/)
### pgsc_calc
- [PLINK v2.0](https://www.cog-genomics.org/plink/2.0/)
- [Nextflow](https://pgsc-calc.readthedocs.io/en/latest/getting-started.html)
- [Docker](https://docs.docker.com/get-docker/)
### R
#### Notebooks



|     |  Notebook               | Description                                         |
| ----| ------------------------| --------------------------------------------------- |
|1    | Sample_characteristics  | Performs descriptive analysis of the study cohort   |
|2    | GWAS_AUD                | Performs a genome-wide association study to identify genetic variants associated with AUDIT scores while adjusting for demographic and population structure covariates.|          |3    | run_prs_pipeline.sh     | Performs genotype quality control by filtering variants and samples based on missingness, minor allele frequency (MAF), and Hardy–Weinberg equilibrium, then calculates a selected polygenic risk score (PGS) using the PGS Catalog Calculator pipeline.|                              
  








