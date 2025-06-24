# Übungsklausur: Datenintegration (50 Punkte)

Die Übungsklausur hat nur den halben Umfang. Die Inhalte sollen eine Anregung geben, wie die Fragen in der Klausur gestellt werden.  
Statt ausführlicher Antworten, werden Sie in der tatsächlichen Klausur einen Multiple-Choice-Fragenteil vorfinden.  
Sie werden auch einen Frageblock abarbeiten, der sich mit der Gestaltung Ihres Protoypen beschäftigt.  

**Bearbeitungshinweise:**

* Dauer: 60 Minuten
* Lesen Sie alle Aufgaben sorgfältig durch.
* Antworten Sie präzise und auf den Punkt. **Begründen Sie Ihre Aussagen ausführlich.**
* Für die Fallstudie können Sie Annahmen treffen, sofern diese explizit genannt und begründet werden.

---

## Teil A: Wissensfragen

1. Erläutern Sie, warum **Datenintegration** für moderne Unternehmen von entscheidender Bedeutung ist, auch wenn sie bereits über zahlreiche IT-Systeme verfügen. Nennen Sie dabei zwei Kernziele der **B2B-Integration**. (4P)
2. Beschreiben Sie die **Point-to-Point Integration** und die **Hubs-and-Spoke Integration**. Nennen Sie jeweils einen wesentlichen Vorteil und einen wesentlichen Nachteil jeder Methode. (6P)
3. Erklären Sie die Funktionen der Konzepte **"Wrapper"** und **"Mediator"** im Kontext einer Datenintegrationsarchitektur. Wie tragen sie zur Lösung von Heterogenitätsproblemen bei? (5P)
4. Erläutern Sie den Unterschied zwischen **Virtual Data Integration** und **Materialized Data Integration**. Nennen Sie jeweils eine typische Anwendungssituation, in er die eine oder andere Methode bevorzugt wird. (5P)

---

## Teil B: Fallstudie

### Aufgabe B1: Fusion im Reisehandel

Das Reiseunternehmen "Global Destinations GmbH", bekannt für klassische Pauschalreisen, hat kürzlich das Online-Startup "AdventureTrails UG" übernommen, das sich auf personalisierte Erlebnisreisen und Outdoor-Aktivitäten spezialisiert hat. Beide Unternehmen betreiben getrennte IT-Systeme und Datenverarbeitungssysteme, die nun integriert werden sollen, um Synergien zu nutzen und ein "einheitliches" Kundenerlebnis zu schaffen.

| Systeme der Global Destinations GmbH                                    | Systeme der AdventureTrails UG                                                                |
| :---------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------- |
| Buchungssystem (Eigenentwicklung): Verwaltet Reisebuchungen, Zahlungen. Relationale Datenbank. | Empfehlungssystem (KI-basiert): Speichert Kundenpräferenzen für Aktivitäten, Bewertungen. Daten in einem Data Lake für Echtzeit-Profile. |
| CRM-System: Speichert Kundendaten (Name, Kontaktdaten, Reisehistorie). On-Premise.   | Social-Media-Management-Plattform: Verwaltet Influencer-Kooperationen, Kampagnenstatistiken. Cloud-basiert. |
| Kundenportal: Zeigt Reiseinformationen, Buchungsstatus. Nutzt eine NoSQL-Datenbank.  |                                                                                               |

1. **Integrationsziele und -herausforderungen**

a) Nennen Sie zwei konkrete Integrationsziele, die Global Destinations GmbH und AdventureTrails UG mit dieser Fusion verfolgen könnten (z.B. aus Kundensicht, Geschäftsprozesssicht). (4P)

b) Diskutieren Sie anhand von zwei Beispielen (z.B. **Verteilung der Daten**, **Heterogenität hinsichtlich des Datenmodells**), welche Herausforderungen die Fusion der genannten Systeme mit sich bringen wird. Erläutern Sie, wie sich diese Herausforderungen in der vorliegenden Fallstudie äußern. (6P)

2. **Architekturvorschlag und Begründung**

a)  Skizzieren Sie eine plausible Datenintegrationsarchitektur für den Merger der beiden Unternehmen. Berücksichtigen Sie dabei die Konzepte "**Mediator**" und "**Wrapper**". (6P)
b)  Begründen Sie Ihre architektonischen Entscheidungen kurz und prägnant. (4P)

---

## Teil C: Wissensfragen

1. **Herausforderungen der Datenintegration**

a) Nennen und erläutern Sie zwei verschiedene Arten der **Heterogenität** (gemäß Skript), die bei der Datenintegration auftreten können. (4P)

b) Geben Sie für jede genannte Art ein kurzes Beispiel aus einem beliebigen Kontext. (2P)

2. **Integrierte Informationssysteme (IIS)**

a) Definieren Sie, was ein **Integriertes Informationssystem (IIS)** ist. (2P)

b) Was ist der Hauptzweck von **Metadaten** in einem IIS? (2P)

---
