# MAMBA-TBPS NCVPRIPG 2025
MAMBA-TBPS: An Efficient Attribute-Relation-Sensitive Framework for Text-Based Person Search

## Abstract
Text-Based Person Search (TBPS) is an emerging cross-modal retrieval task that aims to identify a target individual from an image database using textual description. The challenge lies in bridging the modality gap between visual and textual inputs while addressing inter-identity ambiguity and intra-identity variations. In our proposed MAMBA-TBPS architecture, we integrate the complete loss formulation from the base model—namely, Contrastive Loss, Relation-Aware (RA) Loss, Sensitivity-Aware (SA) Loss, Attribute Loss, and MAE-based Visual Reconstruction Loss. This comprehensive loss design enables our framework to effectively capture fine-grained cross-modal relationships, maintain attribute sensitivity, and enhance visual-textual alignment, ultimately improving retrieval performance. Experimental evaluations on three TBPS benchmarks—CUHK-PEDES, ICFG-PEDES, and RSTPReid—demonstrate that MAMBA-TBPS achieves competitive performance.


![ Intra-identity and Inter-identity ](intra%20and%20inter%20(1).png)
Fig. 1: The images on the left (a and b) illustrate intra-identity variations, where different pictures of the
same individual show changes in appearance due to factors like pose or lighting. On the right (c and d), inter-
identity variations are shown—where a single caption might correspond to two visually similar individuals,
but only one is the correct match (highlighted in green), while the incorrect one is marked in red.

## Architecture
![MAMBA-TBPS](Architecture-1.png)
Fig. 2: The proposed architecture takes an image-text pair as input, processed by separate image and text
encoders, and optimized using contrastive loss. A Masked Autoencoder (MAE) decoder reconstructs the
masked image patches. The text is also passed through a cross-modal encoder that integrates visual em-
beddings via cross-attention. The final output supports three objectives: relation-aware loss for matching
image-text pairs, sensitivity-aware loss for masked word prediction in text, and attribute loss focusing on
textual attribute representations.

## How to run code

### Requirements :




### Prepare Datasets

For datasets preparation and download, please refer to [RaSA](https://github.com/Flame-Chasers/RaSa/).

### Pretrained Checkpoint
- Please download the [pretrained ALBEF Checkpoint](https://storage.googleapis.com/sfr-pcl-data-research/ALBEF/ALBEF.pth).

### Training
Inside the shell folder there are the script for each training.

To train our model just choose a dataset and do:
```shell
# 1. Training on CUHK-PEDES
bash shell/cuhk_train.sh

# 2. Training on ICFG-PEDES
bash shell/icfg_train.sh

# 3. Training on RSTPReid
bash shell/rstp_train.sh
```

Before training, please update dataset location inside each ```.yaml``` file.


### Testing

Inside the shell folder there are the script to test each model.

```shell
# 1. Testing on CUHK-PEDES
bash shell/cuhk-eval.sh

# 2. Testing on ICFG-PEDES
bash shell/icfg-eval.sh

# 3. Testing on RSTPReid
bash shell/rstp-eval.sh
```

Before testing, please update the checkpoint location inside each ```.sh``` file.

## Qualitative results


**Fig. 3:** Top 25 most common nouns and adjectives

![RetrievalImage](mambamars.png)
**Fig. 4:** Comparison of top-10 predictions from the baseline and our model shows that our approach performs
better in multiple cases (e.g., a–d). In example (c), all retrieved images contain bikes, unlike the baseline.
In (e), despite missing the second rank, our model finds more relevant images overall . In (f), although no
exact match is retrieved due to a vague caption, the results remain contextually relevant.


![Gradecamcuhk](gradcam-cuhk.png) ![Gradecamicfg](gradcam-icfg.png) ![Gradecamrstp](gradcam-rstp.png)

**Fig. 5:** Visual comparison of cross-attention maps from the baseline (top) and our model (bottom) using
Grad-CAM. The attribute loss improves attention consistency and accuracy across words




### Paper Citation
Please cite following paper if you make use of this code in your research:
```tex
Comming soon
```
