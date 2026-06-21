# Application of polygenic risk scores for predicting the development of alcohol use disorder
Author: Mariia Kravchenko — ITMO student  
Supervisor: Dmitrii Kharitonov (Genotek), Artem Leushin (Genotek)  
Contact: mariakr55@mail.ru

**Alcohol use disorder (AUD)** is a complex multifactorial condition influenced by both genetic and environmental factors. Recent advances in genome-wide association studies (GWAS) have enabled the identification of genetic variants associated with AUD and facilitated the development of polygenic risk scores (PRS), which aggregate the effects of numerous variants into a single measure of genetic predisposition. This project aims to evaluate the predictive performance of PRS for AUD risk assessment, develop risk prediction models combining genetic and demographic factors, and explore the potential application of PRS in pharmacogenetics for personalized treatment outcome prediction.

## Materials 
### Сohort:
- Database of Genotek: 152 006 individuals
- After filtration: 36503 individuals

### Polygenic risk score
- 13 external PRS from the [PGS Catalog](https://www.pgscatalog.org/)
- 
## Methods
- Phenotype construction using the AUDIT questionnaire (AUDIT > 14 = cases).  
- Population stratification and quality control of genotype data.  
- Genome-Wide Association Study (GWAS) using [PLINK v2.0](https://www.cog-genomics.org/plink/2.0/)  
- Polygenic Risk Score (PRS) calculation using PGS Catalog scores and [PGSCalc](https://pgsc-calc.readthedocs.io/en/latest/).  
- Logistic regression (GLM) for AUD risk prediction.  
- Model evaluation using Odds Ratios (OR), ROC curves, and Area Under the Curve (AUC).  
- Risk stratification analysis across PRS deciles and AUD severity categories.  
- Pharmacogenetic analysis of treatment outcomes (Disulfiram, Cyanamide, Pregabalin, Placebo).  

## Notebooks
-  All the notebooks in the Scrips folder.

|     |  Notebook               | Description                                         |
| ----| ------------------------| --------------------------------------------------- |
|1    | [Sample_characteristics](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/Sample_characteristics.Rmd)  | Performs descriptive analysis of the study cohort   |
|2    | [GWAS.Rmd](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/GWAS.Rmd)                | Performs a genome-wide association study to identify genetic variants associated with AUDIT scores while adjusting for demographic and population structure covariates.|          
|3    | [run_prs_pipeline.sh](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/run_prs_pipeline.sh)     | Performs genotype quality control by filtering variants and samples based on missingness, minor allele frequency (MAF), and Hardy–Weinberg equilibrium, then calculates a selected polygenic risk score (PGS) using the PGS Catalog Calculator pipeline.|    
|4    | [glm_roc_auc.Rmd](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/glm_roc_auc.Rmd)          | Builds logistic regression models with and without demographic covariates (age and sex), computes odds ratios (OR) and ROC AUC metrics |
|5    | [PRS_visualization.Rmd](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/PRS_visualization.Rmd)    | Generates risk-stratification plots based on polygenic risk scores, including odds ratios across PRS deciles, distributions of AUDIT categories across PRS percentiles, and PRS distributions within AUDIT severity groups.|
|6    | [farmo_alco.Rmd](https://github.com/MariiaKaar/ITMO_PRS_for_AUD/blob/main/Scripts/farmo_alco.Rmd)           | Evaluates associations between polygenic risk scores (PRS) and treatment outcomes across medication groups using logistic regression, calculates odds ratios (OR), ROC AUC and confidence intervals, applies multiple-testing correction (Benjamini–Hochberg), identifies the best-performing PRS models, and generates comparative ROC curve visualizations for each treatment group.|

 ## Results 
 <img width="999" height="550" alt="image" src="https://github.com/user-attachments/assets/4497e667-93b5-41e6-bf6c-14a19080a9aa" />









