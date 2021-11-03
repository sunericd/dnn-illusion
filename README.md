# ImageNet-trained deep neural networks exhibit illusion-like response to the Scintillating Grid

## Citation:

**Eric D. Sun, Ron Dekel; ImageNet-trained deep neural networks exhibit illusion-like response to the Scintillating grid. Journal of Vision 2021;21(11):15. doi: https://doi.org/10.1167/jov.21.11.15.**

This repository contains the image stimuli used for the analyses in the aforementioned paper along with all of the resulting output files (representational dissimilarity values across layers):
- "results" contains several output files; includes some files not used in the analyses; organized into "vgg19" and "resnet101"
- "stimuli" contains the sets of image stimuli for each experiment

These are the main data files but additional data files (e.g. for some supplementary figures) are available upon request.

The file name convention for the stimuli set is:
- "SG" = Scintillating Grid
- "HG" = Hermann Grid
- One-pixel dot border unless otherwise specified as "BorderN" where N is the width of the border in pixels.

This repository contains the following Python code notebooks and Matlab scripts:
- "main_analyses.ipynb" - contains all relevant code and methods for generating DNN-related figures in the paper from output embeddings of VGG-19 and Resnet-101 (we retrieved these embeddings from MatConvNet implementations of the DNNs--scripts available upon request)
- "experiment_scoring_task.ipynb" - analysis pipeline for the human experimental results in the main text
- "experiment_discrimination_task.ipynb" - analysis pipeline for the human discrimination task results in the supplementary sections (experiment conducted using PsychoPy, setup files available upon request)
- "generate_images.m" - example script used to generate the stimuli images used in our experiments/study




