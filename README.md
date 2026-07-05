# 🚀 Day 1: API Fundamentals & Data Collection

A foundational hands-on lab mastering REST API basics, HTTP protocols, and JSON payload handling using Postman. This repository stores live production payloads captured from various open-data endpoints.

## 📌 Technical Concepts Mastered
* **API (Application Programming Interface):** The interface layer that enables disparate software systems to communicate via structured requests and responses.
* **HTTP Methods Used:** * `GET`: Idempotent operations used exclusively to fetch data payloads without altering server-side state.
* **REST Architecture:** Leveraged stateless, JSON-driven endpoints conforming to standard RESTful design principles.
* **Payload Versioning:** Documented and adapted to a legacy API deprecation scenario by successfully migrating a request from an outdated endpoint structure to a live production mirror (`v3` migration fallback).

## 📂 Repository Contents
This project contains raw JSON responses fetched via Postman from 5 distinct public endpoints:
1. `cat_fact.json` - Single-object textual data structure.
2. `user_profile.json` - Relational object mapping (mock CRM lead schema).
3. `weather_data.json` - Dense numerical coordinates and nested array parameters.
4. `bitcoin_ticker.json` - Multi-currency financial dataset with dynamic floating-point objects.
5. `country_data.json` - High-volume enterprise-grade JSON payload containing multi-nested arrays and key-value dictionaries.

---
*Built as part of an advanced AI Operations & Automation Engineering track.*