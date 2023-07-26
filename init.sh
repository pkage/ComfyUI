#! /bin/bash

echo "initializing poetry environment..."
poetry install

echo "downloading workflow (1/1)..."
curl --progress https://cdn.ka.ge/ml/sdxl_workflow.json -o sdxl_workflow.json

echo "downloading vae approximator models (1/2)..."
curl --progress https://cdn.ka.ge/ml/taesdxl_decoder.pth -o models/vae_approx
echo "downloading vae approximator models (2/2)..."
curl --progress https://cdn.ka.ge/ml/taesdxl_decoder.pth -o models/vae_approx

echo "downloading base models (1/2)..."
curl --progress "https://cdn.ka.ge/ml/SDXL Base.safetensors" -o "models/chcekpoints/SDXL Base.safetensors"

echo "downloading base models (2/2)..."
curl --progress "https://cdn.ka.ge/ml/SDXL Refiner.safetensors" -o "models/chcekpoints/SDXL Refiner.safetensors"

echo "complete!"
echo "Run ./start.sh to begin."
