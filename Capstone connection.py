#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pip install mysql-connector-python')


# In[2]:


import mysql.connector as connector


# In[5]:


connection=connector.connect(user="Student",password="Passw0rd")


# In[6]:


cursor=connection.cursor()


# In[8]:


cursor.execute("use LittleLemonDB")
connection.database
print("little lemon is set to use")


# In[13]:


show_tables_query = "Show Tables;"
cursor.execute(show_tables_query)
results= cursor.fetchall()
columns=cursor.column_names
print (columns)
for result in results:
    print (result)


# In[14]:


join_query = """Select customer.FullName, customer.PhoneNumber, customer.Email, orders.TotalCost
From customer
Left Join orders
on customer.CustomerID = orders.Customers_ID
WHERE orders.TotalCost > 50; """


# In[16]:


cursor.execute(join_query)
results = cursor.fetchall()
columns = cursor.column_names
print (columns)
for result in results:
    print(result)


# In[18]:


if connection.is_connected():
    cursor.close()
    print("cursor is closed")
    connection.close()
    print ("connection to little lemon is closed")
else:
    print("Connection has been closed already")


# In[ ]:




