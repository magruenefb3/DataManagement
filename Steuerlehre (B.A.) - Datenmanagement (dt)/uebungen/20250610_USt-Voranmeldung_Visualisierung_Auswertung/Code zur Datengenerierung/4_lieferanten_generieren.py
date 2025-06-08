import pandas as pd
import numpy as np
from faker import Faker
import random

fake = Faker('de_DE')

# Lade Adressdaten für Lieferanten
supplier_address_data = np.load('supplier_address_data.npy', allow_pickle=True).item()
supplier_address_ids = supplier_address_data['ids']
supplier_countries = supplier_address_data['countries']

suppliers = []
for i, address_id in enumerate(supplier_address_ids):
    supplier_id = f"L{i+1:03d}"
    company_name = fake.company()
    country = supplier_countries[i]
    vat_id = ""
    if random.random() > 0.3: # 70% der Lieferanten haben eine USt-ID
        if country == 'DE':
            vat_id = f"DE{random.randint(100000000, 999999999)}"
        elif country == 'AT':
            vat_id = f"ATU{random.randint(10000000, 99999999)}"
        else: # Other EU countries
            vat_id = f"{country}{random.randint(100000000, 999999999)}"

    suppliers.append({
        'Lieferanten-ID': supplier_id,
        'Firma': company_name,
        'Adress-ID': address_id,
        'Land': country,
        'Umsatzsteuer-ID': vat_id
    })

df_suppliers = pd.DataFrame(suppliers)
df_suppliers.to_csv('lieferanten.csv', index=False, encoding='utf-8')
print("lieferanten.csv wurde erfolgreich erstellt.")