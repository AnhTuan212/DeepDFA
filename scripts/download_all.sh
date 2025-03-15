#!/bin/bash
set -e

# Raw Big-Vul dataset
gdown.download_folder('https://drive.google.com/file/d/1QOiucs8B1hA1g92TxIUdTFNZeAjFKT2K/view?usp=drive_link',quiet = True)
unzip MSR_data_cleaned.zip -d DDFA/storage/external/

# LineVul version of Big-Vul dataset
gdown.download_folder('https://drive.google.com/file/d/11G_E4gn1XCAZtwsSfRzkNuhQ4L74dCqk/view?usp=drive_link',quiet = True)
unzip MSR_LineVul.zip -d LineVul/data/MSR

# DeepDFA preprocessed data
gdown.download_folder('https://figshare.com/ndownloader/files/43991910',quiet = True)
unzip preprocessed_data.zip

# DeepDFA CFGs
gdown.download_folder('https://drive.google.com/file/d/1KK2b_AxwOxhIEFVO89gp5CLbxiicXKXu/view?usp=drive_link',quiet = True)
unzip before.zip -d DDFA/storage/processed/bigvul
