# Kaggle Enefit Competition

![Tests](https://img.shields.io/github/actions/workflow/status/MoritzM00/kaggle-enefit-competition/test_deploy.yaml?style=for-the-badge&label=Test%20and%20Deploy)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white&style=for-the-badge)][pre-commit]
[![Black](https://img.shields.io/static/v1?label=code%20style&message=black&color=black&style=for-the-badge)][black]
![License](https://img.shields.io/github/license/MoritzM00/kaggle-enefit-competition?style=for-the-badge)

[pre-commit]: https://github.com/pre-commit/pre-commit
[black]: https://github.com/psf/black

This repo contains code for the Kaggle [Enefit Energy Prediction Competition](https://www.kaggle.com/competitions/predict-energy-behavior-of-prosumers).
The goal of the competition is to create an energy prediction model of prosumers to reduce energy imbalance costs.

Download the dataset with
```bash
mkdir data
kaggle competitions download predict-energy-behavior-of-prosumers -p ./data/
```
this requires authentication with your Kaggle account, see [here](https://www.kaggle.com/docs/api) for more information.

## Development

### Set up the environment

1. Install [Poetry](https://python-poetry.org/docs/#installation)
2. Set up the environment:

```bash
make setup
make activate
```

Note: On Apple Silicon, you may need to install `libomp` with `brew install libomp` before running `make setup`. Otherwise, the lightgbm build will fail.


### Install new packages

To install new PyPI packages, run:

```bash
poetry add <package-name>
```

To add dev-dependencies, run:

```bash
poetry add <package-name> --group dev
```

### Documentation

The Documentation is automatically deployed to GitHub Pages.

To view the documentation locally, run:

```bash
make docs_view
```

## Credits

This project was generated with the [Light-weight Python Template](https://github.com/MoritzM00/python-template) by Moritz Mistol.
