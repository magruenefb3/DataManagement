import pandas as pd
import numpy as np
from faker import Faker
import random

fake = Faker('de_DE')

# Lade Adressdaten
customer_address_data = np.load('customer_address_data.npy', allow_pickle=True).item()
customer_address_ids = customer_address_data['ids']
customer_countries = customer_address_data['countries']

customers = []
for i, address_id in enumerate(customer_address_ids):
    customer_id = f"C{i+1:03d}"
    company_name = fake.company()
    country = customer_countries[i]
    vat_id = ""
    if country == 'DE':
        vat_id = f"DE{random.randint(100000000, 999999999)}"
    elif country == 'AT':
        vat_id = f"ATU{random.randint(10000000, 99999999)}"
    else: # Other EU countries
        vat_id = f"{country}{random.randint(100000000, 999999999)}"

    customers.append({
        'Kunden-ID': customer_id,
        'Firma': company_name,
        'Adress-ID': address_id,
        'Land': country,
        'Umsatzsteuer-ID': vat_id
    })

df_customers = pd.DataFrame(customers)
df_customers.to_csv('kunden.csv', index=False, encoding='utf-8')
print("kunden.csv wurde erfolgreich erstellt.")