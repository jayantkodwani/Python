#import pandas
import pandas as pd
    
# making data frame from sample csv file 
data = pd.read_csv("C:/Users/v-jakodw/Downloads/table1.csv") 
df = pd.DataFrame(data)

data = pd.read_csv("C:/Users/v-jakodw/Downloads/table2.csv") 
df2 = pd.DataFrame(data)

#print(df)

#print(df.head(3))

#print(df.sort_values(by=['Age'],ascending=True,na_position='first'))

#print(df.sort_values(by=['Age'],ascending=False,na_position='last'))

#print(df.Department.unique())

#print(len(df))

#print(df['Salary'].sum())

#print(df[df['Age'].isnull()])

#print(df[~df['Age'].isnull()])

#print(df[df.Age >= 35])

#print(df[(df.Age >= 30) & (df.Age <= 40)])

#print(df[(df.Department=='HR') | (df.Department=='Marketing')])

#print(df[~(df.Department=='HR')])

#print(df.groupby(['Department'])['Salary'].sum())

#print(df['Age'].fillna((df['Age'].mean()), inplace=True))
#print(df)

#print(pd.merge(df,df2,on='EmployeeID'))
#print(pd.merge(df,df2,on='EmployeeID',how='left'))
#print(pd.merge(df,df2,on='EmployeeID',how='right'))
#print(pd.merge(df,df2,on='EmployeeID',how='outer'))
#print(pd.merge(df,df2,how='inner',left_on=['EmployeeID','Name'],right_on=['EmployeeID','Name']))

#print(df['Age'].fillna((df['Age'].median()), inplace=True))
#print(df)


df["AgeRank"] = df.Age.rank(ascending=False)
print(df)

df["AgeRank"] = df.Age.rank(method="dense", ascending=False)
print(df)

import numpy as np
df.insert(loc=0, column='RowNum', value=np.arange(len(df))+1)
print(df)

df['Category'] = df.apply(lambda row: 
        'High' if row['Salary'] > 40000 
  else ('Medium' if row['Salary'] > 20000 and row['Salary'] <= 40000
  else ('Low' if row['Salary'] > 0 and row['Salary'] <= 20000
  else None)),axis = 1)
print(df)



#print(df.Age.nunique())
#print(df[df['Age'].isna()])
#print(df[~df['Age'].isna()])
#print (df.isnull())
