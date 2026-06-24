This repository contains ALMA CO (J=2–1) polarization data and analysis scripts used to reduce the figures in the paper "Unveiling Dominant Toroidal Magnetic Fields in a Protostellar Outflow" (Ching et al. 2026, https://arxiv.org/abs/2604.12597). It collects the data products and the scripts needed to reproduce the main analysis.

## Repository structure
- Fig1&SupFig1      - calibrated ALMA FITS images and python code used to reproduce Fig. 1 and Supplementary Fig. 1
- Fig2&SupFig2      - calibrated ALMA FITS images and python code used to reproduce Fig. 2 and Supplementary Fig. 2
- Fig3              - python code and the results of GK effect simulations used to reproduce Fig. 3
- Fig4&SupFig12     - python code and the results of analysis scripts of Supplementary Figs. 3 to 6 used to reproduce Fig. 4 and Supplementary Fig. 12
- Fig5&SupFig14-15  - python code and the results of analysis scripts of Supplementary Figs. 3 to 6 used to reproduce Fig. 5 and Supplementary Figs. 14 and 15
- SupFig13          - python code used to reproduce Supplementary Fig. 13
- SupFig16          - python code and images of Supplementary Figs. 14 and 15 used to reproduce Supplementary Fig. 16
- SupFig3-6         - calibrated ALMA FITS images and python code used to reproduce Supplementary Figs. 3 to 6
- SupFig7-11        - calibrated ALMA FITS images and python code used to reproduce Supplementary Figs. 7 to 11
- README.md         — this file

## Data
- Observations: ALMA Band 6 (CO J=2–1, 230.538 GHz) polarization data.
- ALMA project code:  2016.1.01089.S. The ALMA raw data and pipeline-reduced data are available at https://6almascience.nrao.edu/aq/?observationsProjectCode=2016.1.01089.S.
- All the data used to reproduce the Figures in the paper are available in this repository, except for all.i.cm.fits, which exceeds GitHub's 100 MB file size limit. The data all.i.cm.fits has been deposited publicly at https://codeocean.com/capsule/9661264/tree. Additionally, the data can be obtained by contacting the corresponding author, Tao-Chung Ching chingtaochung@gmail.com.

## Requirements
- Python 3.10+
- numpy, scipy, astropy, matplotlib, pandas
- optionally: jupyter

## Usage
- Run the reduction script (example):
```
jupyter nbconvert \
	--to 'html' \
	--ExecutePreprocessor.allow_errors=True \
	--ExecutePreprocessor.timeout=-1 \
	--FilesWriter.build_directory=../results \
	--execute Exfig13/sim_delta_phi_4panels4.ipynb
```
Note: need to replace the input and output folders with the actual ones your repo uses.

## Citation & acknowledgements
- Zenodo: https://doi.org/0.5281/zenodo.2005465571
- ArXiv: https://arxiv.org/abs/2604.12597

## License
AGPL-3.0 license

## Contact
Maintainer: Tao-Chung Ching — https://github.com/taochung  
For questions, open an issue or email: chingtoachung@gmail.com

