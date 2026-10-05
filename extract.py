import pandas as pd

def extract_csv(path):
    return pd.read_csv(path, encoding='utf-8')

def extract_excel(path):
    return pd.read_excel(path)
