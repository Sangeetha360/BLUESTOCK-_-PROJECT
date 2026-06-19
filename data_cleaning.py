import pandas as pd
import os

raw_folder = "data/raw"
processed_folder = "data/processed"

os.makedirs(processed_folder, exist_ok=True)

for file in os.listdir(raw_folder):
    if file.endswith(".csv"):

        print("=" * 60)
        print(f"Cleaning: {file}")

        df = pd.read_csv(os.path.join(raw_folder, file))

        # Remove duplicates
        df = df.drop_duplicates()
        print("Duplicates removed")

        # Fill missing values
        df = df.fillna("Unknown")
        print("Missing values handled")

        # Standardize column names
        df.columns = df.columns.str.lower().str.strip()
        print("Column names standardized")

        output_path = os.path.join(processed_folder, file)

        df.to_csv(output_path, index=False)

        print("Cleaned file saved")