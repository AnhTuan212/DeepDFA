#!/bin/bash
set -e

# Raw Big-Vul dataset
curl -Lo MSR_data_cleaned.zip 'https://drive.google.com/file/d/1QOiucs8B1hA1g92TxIUdTFNZeAjFKT2K/view?usp=drive_link'
unzip MSR_data_cleaned.zip -d DDFA/storage/external/

# LineVul version of Big-Vul dataset
curl -Lo MSR_LineVul.zip 'https://drive.google.com/file/d/11G_E4gn1XCAZtwsSfRzkNuhQ4L74dCqk/view?usp=drive_link'
unzip MSR_LineVul.zip -d LineVul/data/MSR

# DeepDFA preprocessed data
curl -Lo preprocessed_data.zip 'https://figshare.com/ndownloader/files/43991910'
unzip preprocessed_data.zip

# DeepDFA CFGs
curl -Lo before.zip 'https://drive.google.com/file/d/1KK2b_AxwOxhIEFVO89gp5CLbxiicXKXu/view?usp=drive_link'
unzip before.zip -d DDFA/storage/processed/bigvul
