import pandas as pd
import numpy as np
from faker import Faker
import random

fake = Faker('de_DE') # Für deutsche Adressen

def generate_address(address_id, country, is_foreign=False):
    if country == 'DE':
        street = fake.street_name()
        house_number = str(random.randint(1, 150))
        postal_code = fake.postcode()
        city = fake.city()
        alternative_address = ""
    elif country == 'AT':
        fake_at = Faker('de_AT')
        street = fake_at.street_name()
        house_number = str(random.randint(1, 150))
        postal_code = fake_at.postcode()
        city = fake_at.city()
        alternative_address = ""
    else: # Other EU countries
        fake_en = Faker('en_US') # Using a generic Faker for simplicity
        street = fake_en.street_name()
        house_number = str(random.randint(1, 150))
        postal_code = fake_en.postcode()
        city = fake_en.city()
        alternative_address = f"{fake_en.secondary_address()} {fake_en.building_number()}" if is_foreign else ""

    return {
        'Adress-ID': address_id,
        'Strasse_Hausnummer': f"{street} {house_number}",
        'PLZ_Stadt': f"{postal_code} {city}",
        'Alternative_Adresse': alternative_address,
        'Land': country
    }

num_customers = 50
num_suppliers = 30 # Beispielanzahl für Lieferanten

all_addresses = []
address_id_counter = 1

# Adressen für Kunden
customer_countries = ['DE'] * 30 + ['AT'] * 10 + random.choices(['FR', 'IT', 'ES', 'NL', 'BE', 'PL'], k=10) # 10 remaining EU customers
customer_address_ids = []
for country in customer_countries:
    all_addresses.append(generate_address(address_id_counter, country))
    customer_address_ids.append(address_id_counter)
    address_id_counter += 1

# Adressen für Lieferanten
supplier_countries = random.choices(['DE', 'AT', 'FR', 'IT', 'ES'], k=num_suppliers)
supplier_address_ids = []
for country in supplier_countries:
    all_addresses.append(generate_address(address_id_counter, country, is_foreign=True if country != 'DE' else False))
    supplier_address_ids.append(address_id_counter)
    address_id_counter += 1

df_addresses = pd.DataFrame(all_addresses)
df_addresses.to_csv('adressen.csv', index=False, encoding='utf-8')
print("adressen.csv wurde erfolgreich erstellt.")

# Speichere die generierten Adress-IDs und Länder für die nächsten Skripte
np.save('customer_address_data.npy', {'ids': customer_address_ids, 'countries': customer_countries})
np.save('supplier_address_data.npy', {'ids': supplier_address_ids, 'countries': supplier_countries})