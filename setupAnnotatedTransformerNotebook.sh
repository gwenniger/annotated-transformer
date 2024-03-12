# Description/Instructions
#
# This is a build/installation script from the "Annotated Transformer" notebook/project
# which is available from https://github.com/harvardnlp/annotated-transformer/
# and from http://nlp.seas.harvard.edu/annotated-transformer/
# We use the newer version of the notebook, for newer PyTorch versions, the older version is available from:
# https://nlp.seas.harvard.edu/2018/04/03/attention.html

# It is also possible to run this in google colab:
# https://colab.research.google.com/github/harvardnlp/annotated-transformer/blob/master/AnnotatedTransformer.ipynb

# Clone the annotated transformer notebook
git clone https://github.com/harvardnlp/annotated-transformer.git
# Move into annotated transformer project
cd annotated-transformer
# Create and active annotated-transformer environment
conda create --name annotated-transformer
conda activate annotated-transformer
# install the conda version of pip
conda install pip
# Install requirements within the new activated environment
# Use pip, as per the instructions from: https://github.com/harvardnlp/annotated-transformer/
# (possibly, with some work could be installed using conda in place of pip as well)
pip install -r requirements.txt
# Create the notebook
# "To produce the .ipynb notebook file using the markdown source, run (under the hood, the notebook build target simply runs jupytext --to ipynb the_annotated_transformer.py):"
make notebook

# use conda to install jupyter. conda makes the installed packages more reusable than pip, so use it where possible
#See: https://stackoverflow.com/questions/50395044/can-packages-be-shared-across-anaconda-environments
# "  Conda also uses hardlinks for packages installed vs conda install. A good description of hardlinks can be found here. They basically link dependencies across multiple environments like you've described above. Packages installed via pip are not hardlinked, so they cannot take advantage of the space savings that conda packages offer."
#
conda install jupyter

# To run
# jupyter notebook  # Use any browser
# For specific browser:
jupyter notebook --browser chromium
# (Now manually open the notebook inside the browser)
