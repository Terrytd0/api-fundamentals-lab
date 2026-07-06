# 🚀 Day 1: API Fundamentals & Data Collection

A foundational hands-on lab mastering REST API basics, HTTP protocols, and JSON payload handling using Postman. This repository stores live production payloads captured from various open-data endpoints.

## 📌 Technical Concepts Mastered
* **API (Application Programming Interface):** The interface layer that enables disparate software systems to communicate via structured requests and responses.
* **HTTP Methods Used:** * `GET`: Idempotent operations used exclusively to fetch data payloads without altering server-side state.
* **REST Architecture:** Leveraged stateless, JSON-driven endpoints conforming to standard RESTful design principles.
* **Payload Versioning:** Documented and adapted to a legacy API deprecation scenario by successfully migrating a request from an outdated endpoint structure to a live production mirror (`v3` migration fallback).

## 📂 Repository Contents
This project contains raw JSON responses fetched via Postman from 5 distinct public endpoints:
1. `Cat Fact JSON.json` - Single-object textual data structure.
2. `Fake User JSON.json` - Relational object mapping (mock CRM lead schema).
3. `Current weather data JSON.json` - Dense numerical coordinates and nested array parameters.
4. `Bitcoin price JSON.json` - Multi-currency financial dataset with dynamic floating-point objects.
5. `Massive Peru Object JSON.json` - High-volume enterprise-grade JSON payload containing multi-nested arrays and key-value dictionaries.

---

## 🚀 Day 2: JSON Deep Dive & Resource Creation

Today's lab focused on shifting from reading data (`GET`) to structuring and transmitting payloads to create resources (`POST`), while analyzing nesting rules.

### 📌 Technical Concepts Mastered
* **Objects vs. Arrays:** Mastered data structural differences where `{}` denotes a standalone key-value dictionary (like a single Salesforce record) and `[]` denotes an indexed list array of elements.
* **POST Protocols:** Executed active payload transmission using `JSONPlaceholder` to simulate data entry injection into a remote backend database.
* **HTTP Status Codes:** Verified successful data ingest via the `201 Created` response profile, distinguishing it from standard `200 OK` success states.

### 📂 Repository Contents
* `day2_success.png` - Screenshot capturing the Postman interface, JSON request body schema, and the verified `201 Created` server response code status.
* `day2_post_response.json` - Serialized JSON response returned by the server, confirming receipt and generation of the new mock resource with a unique ID string.

---
*Built as part of an advanced AI Operations & Automation Engineering track.*