#!/bin/bash
set -e

echo "🔽 Tải Raw Big-Vul dataset..."
gdown --id 1QOiucs8B1hA1g92TxIUdTFNZeAjFKT2K --quiet -O MSR_data_cleaned.zip
unzip -o MSR_data_cleaned.zip -d DDFA/storage/external/
rm MSR_data_cleaned.zip

echo "🔽 Tải LineVul dataset..."
gdown --id 11G_E4gn1XCAZtwsSfRzkNuhQ4L74dCqk --quiet -O MSR_LineVul.zip
unzip -o MSR_LineVul.zip -d LineVul/data/MSR/
rm MSR_LineVul.zip

echo "🔽 Tải DeepDFA preprocessed data..."
wget --quiet --show-progress --output-document=preprocessed_data.zip "https://figshare.com/ndownloader/files/43991910"
unzip -o preprocessed_data.zip
rm preprocessed_data.zip

echo "🔽 Tải DeepDFA CFGs..."
gdown --id 1KK2b_AxwOxhIEFVO89gp5CLbxiicXKXu --quiet -O before.zip
unzip -o before.zip -d DDFA/storage/processed/bigvul/
rm before.zip 

echo "✅ Hoàn thành tải và giải nén tất cả dữ liệu!"
