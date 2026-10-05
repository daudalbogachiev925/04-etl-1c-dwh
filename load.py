from sqlalchemy import create_engine

def load(df, table):
    eng = create_engine('postgresql://admin:admin@localhost/dwh')
    df.to_sql(table, eng, if_exists='replace', index=False)
