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

## 🚀 Day 3: API Authentication & Query Param Filtering

Today's lab focused on mastering API security protocols, passing identity verification structures, and isolating targeted data subsets via parameters.

### 📌 Technical Concepts Mastered
* **Authentication Methodologies:** Explored structural differences between static application identifiers (**API Keys**) and transient token passes (**Bearer Tokens**).
* **Metadata Encapsulation (Headers):** Managed secure payload routing by appending authentication headers to clear `401 Unauthorized` flags.
* **Query Parameters:** Utilized dynamic URL string mutations (`?key=value`) to execute explicit search and filter functions against an endpoint database.

### 📂 Repository Contents
* `day3_bearer_success.png` - Screenshot validating an authenticated token verification payload yielding a `200 OK` response.
* `day3_query_filter.png` - Screenshot capturing a parameter-filtered data output.
* `day3_bearer_success JSON.json` - Serialized response from the authenticated authorization server, confirming token validation.
* `day3_query_filter JSON.json` - Filtered dataset payload containing the specific structured array elements requested via search query arguments.

---

## 🚀 Day 4: Visual Automation Architecture & n8n Ingestion

Today marked the transition from manual endpoint execution to automated visual node architecture, implementing industrial orchestration logic via the n8n ecosystem.

### 📌 Technical Concepts Mastered
* **Node-Based Systems Engineering:** Conceptualized workflow pipelines using discrete functional components categorized into operational triggers and worker actions.
* **Data Stream Serialization:** Tracked real-time JSON payload transitions natively as data blocks flow dynamically across sequential logic steps.
* **Orchestration Execution:** Deployed execution triggers to evaluate automated handling arrays outside of standard terminal or API testing applications.

### 📂 Repository Contents
* `day4_n8n_canvas.png` - Comprehensive screenshot capturing the functional n8n canvas graph showing successful execution paths.
* `day4_n8n_output.json` - The underlying JSON payload processed and transformed natively within the n8n application environment.

---

## 🚀 Day 5: Core Ingestion Pipeline - Mini Project Capstone (v1)

Today marked the execution of the Week 1 project capstone, constructing an automated data logging architecture tracking user submissions from a production client interface directly to a structured database layer.

### 📌 Technical Concepts Mastered
* **Webhook Architecture Operations:** Implemented inbound webhook pathways to establish instantaneous asynchronous communication from third-party client inputs to a local listening server.
* **Public Tunneling & Reverse Proxies:** Leveraged tunnel protocols to bridge cloud-hosted webhooks (Google Apps Script) past local network firewalls directly to self-hosted n8n instances.
* **Database Field Mapping:** Executed dynamic JSON token variable extraction (`{{ $json }}`) to target and map properties across distinct layout configurations without losing character values.
* **Automated Metadata Logging:** Configured native database schema triggers (`Created time`) to automatically track record timestamps upon entry creation.

### 📂 Repository Contents
* `day5_workflow_v1.png` - Architecture screenshot capturing the live execution stream from Google Form submission across the n8n node tree into Airtable.
* `day5_airtable_log.png` - Visual proof showing the structured row values compiled accurately inside the Airtable storage framework.
* `day5_airtable_node.png` - Detailed configuration panel showing field mappings and credential binding inside the Airtable action node.
* `day5_webhook_node.png` - Inspection view of the inbound Webhook trigger node displaying payload capture schemas and test endpoint configurations.

---

*Built as part of an advanced AI Operations & Automation Engineering track.*