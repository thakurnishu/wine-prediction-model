#!/bin/bash

export MLFLOW_TRACKING_URI="https://mlflow.nishantlabs.cloud"
export RUN_NAME="run-2"
export EXPERIMENT_NAME="wine-prediction-model"
export TEST_SIZE="0.3"
source .venv/bin/activate

python3 train.py \
  --run $RUN_NAME \
  --test-size $TEST_SIZE \
  --experiment $EXPERIMENT_NAME
