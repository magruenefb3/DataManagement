import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

# Lade Kundendaten
df_customers = pd.read_csv('kunden.csv')

sales = []
transaction_id_counter = 1

vat_rates_de = [0.07, 0.19]
vat_rates_at = [0.10, 0.20]

def get_vat_rate(country):
    if country == 'DE':
        return random.choice(vat_rates_de)
    elif country == 'AT':
        return random.choice(vat_rates_at)
    else: # Other EU countries
        return round(random.uniform(0.15, 0.25), 2) # Random VAT between 15% and 25%

for index, customer in df_customers.iterrows():
    num_sales = random.randint(5, 20)
    customer_id = customer['Kunden-ID']
    customer_country = customer['Land']

    for _ in range(num_sales):
        transaction_id = f"T{transaction_id_counter:05d}"
        date = (datetime.now() - timedelta(days=random.randint(1, 365))).strftime('%Y-%m-%d')
        net_amount = round(random.uniform(50, 50000), 2)
        vat_rate = get_vat_rate(customer_country)
        vat_amount = round(net_amount * vat_rate, 2)
        gross_amount = round(net_amount + vat_amount, 2)
        category = random.choice(['Produkt A', 'Dienstleistung B', 'Lizenz C', 'Beratung D'])

        sales.append({
            'Transaktions-ID': transaction_id,
            'Datum': date,
            'Kunden-ID': customer_id,
            'Nettobetrag': net_amount,
            'Umsatzsteuer-Satz': vat_rate,
            'Kategorie': category,
            'Umsatzsteuer-Betrag': vat_amount,
            'Brutto-Betrag': gross_amount
        })
        transaction_id_counter += 1

df_sales = pd.DataFrame(sales)
df_sales.to_csv('umsatz.csv', index=False, encoding='utf-8')
print("umsatz.csv wurde erfolgreich erstellt.")