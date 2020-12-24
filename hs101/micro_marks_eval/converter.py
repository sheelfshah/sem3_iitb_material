import re
import pandas as pd

data_list = []
with open("marks.txt") as f:
    for line in f.readlines():
        m = re.search(r"\d", line)
        name = line[:m.start()]
        details = line[m.start():]
        details = [name] + details.split()
        data_list.append(details)

df = pd.DataFrame(data_list)
df["quiz"] = pd.to_numeric(df[2])
df["endsem"] = pd.to_numeric(df[3])
df.drop([2, 3], inplace=True, axis=1)
df["total"] = df["quiz"] * 40 / 39 + df["endsem"]
df.sort_values("total", ascending=False, inplace=True)
df.to_csv("formatted_marks.csv", index=False)
