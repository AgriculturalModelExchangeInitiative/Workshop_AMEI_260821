# Installation of Crop2ML User Interface 

## Installation of PyCrop2ML

### Conda Installation

[Conda](https://conda.io) is a package manager that can be installed on Linux, Windows, and Mac.
If you have not yet installed conda on your computer, follow these instructions:

[Conda Installation](https://conda.io/docs/user-guide/install/index.html). Follow instructions for Miniconda.

[Conda Download](https://conda.io/miniconda.html). Use Python 3.7 based installation.

#### Windows, Linux, Mac

Create an environment named *amei_26_08_21* (use the name you want):

    conda create -n amei_26_08_21 python=3.7

Activate the *amei_26_08_21* environment:

    conda activate amei_26_08_21

Install the different packages

    conda install -c conda-forge path.py six nbformat Cython nbsphinx networkx graphviz  pydot pyyaml unyt sphinx cookiecutter pytest antlr4-python3-runtime


If you haven't already installed git:

    conda install -c conda-forge git

To install:

    git clone https://github.com/AgriculturalModelExchangeInitiative/PyCropML.git
    cd PyCropML
    python setup.py install


## Installation of Pycrop2ML_UI


With **conda**:

### Install jupyterlab, nodejs and qgrid

    [source] cd ..
    conda install nodejs  jupyterlab=2 qgrid=1.3.1
    conda install -c conda-forge ipyfilechooser

### install Jupyterlab extensions

    jupyter labextension install @jupyter-widgets/jupyterlab-manager@2
    jupyter labextension install qgrid2 

To install 

    git clone https://github.com/AgriculturalModelExchangeInitiative/Pycrop2ml_ui.git
    cd Pycrop2ml_ui
    python setup.py install

To run (from the repository where you would like to create your package or a repository that contains it)

    [source] cd ..
    [source] jupyter lab

Open a notebook using Python3 kernel and copy in a cell 
    
    from pycrop2ml_ui.model.MainMenu import main
    main()

