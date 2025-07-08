import connectorx as cx
import pyarrow

postgres_url = "postgresql://postgres:postgres@postgres:5432/postgres"
query = "SELECT test_timestamptz FROM test_types"
df = cx.read_sql(postgres_url, query, return_type="arrow")

print(df.column("test_timestamptz")[0])
print(df.column("test_timestamptz")[1])
print(df.column("test_timestamptz")[2])
print(df.column("test_timestamptz")[3])