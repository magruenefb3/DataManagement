import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

# Lade Lieferantendaten
df_suppliers = pd.read_csv('lieferanten.csv')

pre_tax_data = []
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

for index, supplier in df_suppliers.iterrows():
    num_transactions = random.randint(3, 10) # Beispiel: 3 bis 10 Vorsteuer-Transaktionen pro Lieferant
    supplier_id = supplier['Lieferanten-ID']
    supplier_country = supplier['Land']

    for _ in range(num_transactions):
        transaction_id = f"P{transaction_id_counter:05d}"
        date = (datetime.now() - timedelta(days=random.randint(1, 365))).strftime('%Y-%m-%d')
        net_amount = round(random.uniform(100, 20000), 2) # Beispielbeträge
        pre_tax_rate = get_vat_rate(supplier_country)
        pre_tax_amount = round(net_amount * pre_tax_rate, 2)
        gross_amount = round(net_amount + pre_tax_amount, 2)
        category = random.choice(['Investition', 'Betriebsausgabe'])

        pre_tax_data.append({
            'Transaktions-ID': transaction_id,
            'Datum': date,
            'Lieferanten-ID': supplier_id,
            'Nettobetrag': net_amount,
            'Vorsteuer-Satz': pre_tax_rate,
            'Kategorie': category,
            'Vorsteuer-Betrag': pre_tax_amount,
            'Brutto-Betrag': gross_amount
        })
        transaction_id_counter += 1

df_pre_tax_data = pd.DataFrame(pre_tax_data)
df_pre_tax_data.to_csv('vorsteuerdaten.csv', index=False, encoding='utf-8')
print("vorsteuerdaten.csv wurde erfolgreich erstellt.")