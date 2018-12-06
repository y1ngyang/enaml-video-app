@echo off
:: inverse order of channels:
"%_conda%" config --env --add channels conda-forge
"%_conda%" config --env --add channels defaults

"%_conda%" remove --force --yes pyqtgraph
"%_pip%" install git+https://github.com/pyqtgraph/pyqtgraph.git
"%_conda%" remove --force --yes qt pyqt sip
"%_pip%" install pyside2

:: "%_python%" -m ipykernel install --user --name %env%