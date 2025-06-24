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
![MAMBA-TBPS]<iframe src="https://github.com/Mehulk43/MAMBA-TBPS/blob/main/Architecture.pdf" width="100%" height="600px"></iframe>
Fig. 2: The proposed architecture takes an image-text pair as input, processed by separate image and text
encoders, and optimized using contrastive loss. A Masked Autoencoder (MAE) decoder reconstructs the
masked image patches. The text is also passed through a cross-modal encoder that integrates visual em-
beddings via cross-attention. The final output supports three objectives: relation-aware loss for matching
image-text pairs, sensitivity-aware loss for masked word prediction in text, and attribute loss focusing on
textual attribute representations.

## how to run code


## Qualitative results


Fig. 4: Top 25 most common nouns and adjectives


Fig. 5: Comparison of top-10 predictions from the baseline and our model shows that our approach performs
better in multiple cases (e.g., a–d). In example (c), all retrieved images contain bikes, unlike the baseline.
In (e), despite missing the second rank, our model finds more relevant images overall . In (f), although no
exact match is retrieved due to a vague caption, the results remain contextually relevant.



Fig. 6: Visual comparison of cross-attention maps from the baseline (top) and our model (bottom) using
Grad-CAM. The attribute loss improves attention consistency and accuracy across words
