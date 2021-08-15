import os
import csv
import pandas as pd
import numpy as np
import pyodbc
import pymysql
import mysql.connector
from mlxtend.frequent_patterns import apriori
from mlxtend.frequent_patterns import association_rules
tsv_file = open("C://Users//arkad//OneDrive//Desktop//Assignments//sample_dataset_with_header.tsv")
read_tsv = csv.reader(tsv_file, delimiter="\t", )
read_tsv

###
for row in read_tsv:
  print(row)

#csvreader = csv.reader(tsv_file, delimiter="\t")
#fields = next(csvreader)
#fields
df = pd.DataFrame(read_tsv)
print(df.head())
df.columns=['hardware_manufacturer', 'hardware_model', 'hardware_platform', 'hardware_screen_width', 'hardware_screen_height',
            'device_id', 'device_os_version', 'device_mcc', 'device_mnc', 'device_carrier', 'session_id', 'session_start_date_time',
            'session_end_date_time', 'action_mysql_id', 'action_type_major', 'action_type_minor', 'action_resource_major',
            'action_resource_minor', 'action_request_time', 'action_invisible_time', 'action_sort_order', 'geoip_continent_code',
            'geoip_country_code', 'geoip_time_zone']

final_df = df
df2 = final_df.iloc[:-1 , :]
df3 = df2.iloc[1:, :]

#########################################
connection = pymysql.connect(host='localhost',
                             user='root',
                             password='Abcd1234',
                             db='yinzcam_test')

cursor = connection.cursor()

cols = "`,`".join([str(i) for i in final_df.columns.tolist()])

# Insert DataFrame recrds one by one.
for i,row in final_df.iterrows():
    sql = "INSERT INTO `yinzdata` (`" +cols + "`) VALUES (" + "%s,"*(len(row)-1) + "%s)"
    cursor.execute(sql, tuple(row))

    # the connection is not autocommitted by default, so we must commit to save our changes
    connection.commit()
#############################################

#############################################
from sqlalchemy import create_engine

# create sqlalchemy engine
engine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user="root",
                               pw="Abcd1234",
                               db="yinzcam_test"))

df3.to_sql('yinzdata_vs4', con = engine, if_exists = 'append')



### IMPORTING BACK DATABASE ###

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Abcd1234",
  database="yinzcam_test"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM yinzdata4")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)


### CLUSTERING ###

import matplotlib.pyplot as plt
%matplotlib inline
import sklearn
from sklearn.cluster import KMeans
from sklearn.preprocessing import MinMaxScaler
from mpl_toolkits.mplot3d import Axes3D
from sklearn.preprocessing import scale

import sklearn.metrics as sm
from sklearn import datasets
from sklearn.metrics import confusion_matrix, classification_report

df3.dtypes
df3['hardware_model'] = df3.hardware_model.astype(str)

df3.hardware_model.astype("category").cat.codes
df3.device_mcc.astype("category").cat.codes

df3.satisfaction.astype("category",
  ordered=True,
  categories=ordered_satisfaction
)


plt.scatter(df3['hardware_model'], df3['geoip_country_code'])
