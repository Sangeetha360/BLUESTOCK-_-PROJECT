import pandas as pd
import sqlite3
import os

processed_folder = "data/processed"
db_path = "database/mutual_fund.db"

os.makedirs("database", exist_ok=True)

conn = sqlite3.connect(db_path)

for file in os.listdir(processed_folder):

    if file.endswith(".csv"):

        print("=" * 60)
        print(f"Loading: {file}")

        df = pd.read_csv(os.path.join(processed_folder, file))

        table_name = file.replace(".csv", "")

        df.to_sql(
            table_name,
            conn,
            if_exists="replace",
            index=False
        )

        print("Data loaded successfully")

# Close only AFTER all files are loaded
conn.close()

print("\nAll datasets loaded into SQLite database.")