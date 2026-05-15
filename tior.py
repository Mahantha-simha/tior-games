import pandas as pd
import numpy as np


df1 = pd.read_json('GameFactMockData2.json')
df=pd.json_normalize(df1['gamefact_data'])
# df.to_csv('ModifiedTocsv.csv')

#coloum Event ID

droping=df[df['EventID']=='None']
df.drop(droping.index, inplace=True)
df['EventID']=df['EventID'].astype(int)

print(df.info())

#coloum Referee ID
def xy(x):
    if 'None' in x:
        return x.replace('None',np.nan)
    else :return x

df['RefereeID']=df['RefereeID'].astype(str).apply(xy) 
df['RefereeID']=df['RefereeID'].astype(int)  

print(df['RefereeID'])

# print(df["EventID"].unique())