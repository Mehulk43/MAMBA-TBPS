# MAMBA-TBPS
Text-Based Person Search (TBPS) is an emerging cross-modal retrieval task that aims
to identify a target individual from an image database using only a natural language description.
The challenge lies in bridging the modality gap between visual and textual inputs while addressing
inter-identity ambiguity—where similar descriptions may match multiple people—and intra-identity
variation, caused by changes in pose, illumination, and viewpoint. In our proposed MAMBA-TBPS
architecture, we integrate the complete loss formulation from the MARS model—namely, Contrastive
Loss, Relation-Aware (RA) Loss, Sensitivity-Aware (SA) Loss, Attribute Loss, and MAE-based Vi-
sual Reconstruction Loss. This comprehensive loss design enables our framework to effectively capture
fine-grained cross-modal relationships, maintain attribute sensitivity, and enhance visual-textual align-
ment, ultimately improving retrieval performance in text-based person search. Experimental evalua-
tions on three widely-used TBPS benchmarks—CUHK-PEDES, ICFG-PEDES, and RSTPReid—show
that MAMBA-TBPS achieves competitive performance, with some results surpassing existing methods,
while others are approximately on par with the base model. These findings demonstrate the effective-
ness of integrating attribute-aware modelling, masked reconstruction, and multi-loss optimisation in
addressing the challenges inherent to TBPS.

## Architecture
