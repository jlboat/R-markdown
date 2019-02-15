#!/bin/bash

module purge
module load R
Rscript -e 'rmarkdown::render("DTE.Rmd", params=list(project="DTE",stringtie_path="./results/stringtie",sample_names="Control_1,Control_2,Control_3,Treatment_1,Treatment_2,Treatment_3",sample_labels="Control,Treatment",replicates="1,1,1,2,2,2",contrasts="Treatment-Control"))'

# EXAMPLE DIRECTORY STRUCTURE
# results/
# └── stringtie
#     ├── Treatment_1
#     │   ├── Treatment_1_transcripts.gtf
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
#     ├── Treatment_2
#     │   ├── Treatment_2_transcripts.gtf
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
#     ├── Treatment_3
#     │   ├── Treatment_3_transcripts.gtf
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
#     ├── Control_1
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── Control_1_transcripts.gtf
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
#     ├── Control_2
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── Control_2_transcripts.gtf
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
#     ├── Control_3
#     │   ├── e2t.ctab
#     │   ├── e_data.ctab
#     │   ├── Control_3_transcripts.gtf
#     │   ├── i2t.ctab
#     │   ├── i_data.ctab
#     │   └── t_data.ctab
