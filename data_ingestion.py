import pandas as pd
import os

data_folder = "data/raw"

files = [
    file for file in os.listdir(data_folder)
    if file.endswith(".csv")
]
for file in files:
    print("=" * 60)
    print(f"Dataset: {file}")

    df = pd.read_csv(os.path.join(data_folder, file))

    print("\nShape:")
    print(df.shape)

    print("\nColumns:")
    print(df.columns.tolist())

    print("\nData Types:")
    print(df.dtypes)

    print("\nMissing Values:")
    print(df.isnull().sum())
    print("=" * 60)