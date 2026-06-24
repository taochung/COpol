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
- ALMA project code: [ADD_PROJECT_CODE_HERE] (e.g., 2017.1.01234.S). If raw measurement sets are not included (recommended for size), provide instructions to download from the ALMA archive and where to place them locally (e.g., data/raw/).
- If you provide reduced FITS or CASA products, state their location and format.
- Note typical data sizes and disk requirements.

Example:
1. Download raw data from ALMA archive (project code: 2017.1.XXXXXX)
2. Put raw measurement sets under `data/raw/` or point `SCRIPTS_DATA_DIR` to the download location

## Requirements
List the required software and versions. Example:

- Python 3.10+
- numpy, scipy, astropy, matplotlib, pandas
- CASA X.Y.Z (if CASA scripts are included) or casatools/casatasks
- optionally: jupyterlab, seaborn

Provide a requirements.txt and/or environment.yml. Example pip install:
```
pip install -r requirements.txt
```
or conda:
```
conda env create -f environment.yml
conda activate copol
```

## Installation
Step-by-step:

1. Clone the repository:
```
git clone https://github.com/taochung/COpol.git
cd COpol
```
2. Create environment and install dependencies (see Requirements).
3. Download data as described in Data and place under `data/`.

## Usage
Give clear commands and examples for the typical tasks. If you have scripts, show options:

- Run the reduction script (example):
```
python scripts/reduce_co21.py --input data/raw/ --output results/ --config configs/reduction.yaml
```

- Create polarization maps:
```
python scripts/make_polarization_maps.py --ms data/raw/target.ms --out results/target_pol.fits
```

- Reproduce figure 3 from the paper:
```
jupyter nbconvert --to html notebooks/figure3.ipynb --execute
```

Replace the script names/arguments with the actual ones your repo uses.

## Example workflows
One-line overview of complete pipeline:
1. calibrate raw MS (CASA or scripted)
2. image Stokes I,Q,U,V
3. primary-beam correct and convert to FITS
4. compute polarization fraction and angle
5. make diagnostic plots and tables

Add short examples of expected inputs and outputs.

## Results & visualizations
Point to `results/` with sample figures and tables. If you include a `figures/` folder, mention that and include thumbnails or example images in the README (small inline images or links to results).

## Reproducibility
- Provide `requirements.txt` or `environment.yml`.
- Optionally provide a Dockerfile or binder/environment for interactive reproduction.
- Note random-seed handling if any steps involve random choices.

## Citation & acknowledgements
- How to cite the dataset and the code (e.g., DOI for dataset or the paper).
- Acknowledge ALMA and any collaborators or funding agencies.
- Example: "If you use these data or code, please cite: [Author et al., YYYY, Journal, DOI]."

## Contributing
- Short note on how to open issues and pull requests.
- Code style / testing guidelines (if any).

## License
State the license (e.g., MIT, BSD-3). Add a LICENSE file to the repo.

## Contact
Maintainer: Tao Chung — https://github.com/taochung  
For questions, open an issue or email: <your-email@example.com>

## TODO
- Add `requirements.txt` / `environment.yml`.
- Add example data products or link to ALMA archive instructions.
- Add a LICENSE file.
- Provide a small test dataset in `data/example/` for CI tests and demo notebooks.
