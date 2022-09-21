# B cell in mucosal healing

***
### Citation

This is a public repository containing scripts used in the publication:

Frede A\*, Czarnewski P\*, Monasterio G\* et al. (\* co-first authors)\
[B cell expansion hinders the stomal-epithelium regenerative crosstalk during mucosal healing](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3945928)\
**Immunity** 2022 (in Revision)



***
### Running the analysis

The analysis scripts are available in the `code` folder  and is empty by default.
The `data` folder is used to host the raw counts and other files used for the analysis.
Some datasets require manual download and should be placed in the corresponding folder. The `results` folder,
also empty by default, will store the output from analysis performed.
The analysis done herein can be reproduced by installing CONDA and running:

1. Clone this repository\
```
git clone https://github.com/czarnewski/b_cell_in_mucosal_healing.git
```

2. Create and activate the conda environment\
```
cd b_cell_in_mucosal_healing

conda activate base
conda install -c conda-forge mamba

mamba env create -n b_cell_mh -f env_b_cell_mh.yml
conda activate b_cell_mh
```

***
### Datasets

The list of all datasets used in the manuscript are depicted below:

| Technology | Dataset | source publication | Accession no |
|------------|---------|--------------------|--------------|
| 10X scRNAseq | B cells, DSS d0 and d14 | this manuscript | [GSE163637](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE163637) |
| 10X scRNAseq | stromal and epithelial, BCD and Ctrl, DSS d14 | this manuscript | [GSE163638](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE163638) |
| bulk-RNAseq | Colon tissue (BCD and Ctrl, DSS d14) | this manuscript | [GSE207178](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE207178) |
| bulk-RNAseq | Colon tissue (DSS d0/2/4/6/7/8/10/12/14) | [Czarnewski et al 2019  Nat Commun](https://www.nature.com/articles/s41467-019-10769-x) | [GSE131032](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE131032) |
| 16S sequencing | Microbiota (BCD and Ctrl, DSS d14) | this manuscript | [PRJEB54765](https://www.ebi.ac.uk/ena/browser/view/PRJEB54765) |
| 10X Visium | Colon (DSS d0 and. d14) | [Parigi et al. 2021  Nat Commun](https://www.nature.com/articles/s41467-022-28497-0) | [GSE169749](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE169749) |
| 10X Visium | Colon (BCD and Ctrl, DSS d14) | this manuscript | [GSE190595](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE190595) |
| 10X scRNAseq |Single cell, colon, human, ulcerative colitis | [Smillie et al 2019 Cell](https://www.sciencedirect.com/science/article/pii/S0092867419307329) | [SCP259](https://singlecell.broadinstitute.org/single_cell/study/SCP259/intra-and-inter-cellular-rewiring-of-the-human-colon-during-ulcerative-colitis) |
| 10X scRNAseq | Bone marrow from Tabula Muris | [TMC et al 2018 Nature](https://www.nature.com/articles/s41586-018-0590-4) | [GSE109774](https://0-www-ncbi-nlm-nih-gov.brum.beds.ac.uk/geo/query/acc.cgi?acc=GSE109774) |
