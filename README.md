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
* **Public Tunneling & Reverse Proxies:** Leveraged tunnel protocols (Cloudflare Tunnel) to bridge cloud-hosted webhooks (Google Apps Script) past local network firewalls directly to self-hosted n8n instances.
* **Database Field Mapping:** Executed dynamic JSON token variable extraction (`{{ $json }}`) to target and map properties across distinct layout configurations without losing character values.
* **Automated Metadata Logging:** Configured native database schema triggers (`Created time`) to automatically track record timestamps upon entry creation.

### 📂 Repository Contents
* `day5_workflow_v1.png` - Architecture screenshot capturing the live execution stream from Google Form submission across the n8n node tree into Airtable.
* `day5_airtable_log.png` - Visual proof showing the structured row values compiled accurately inside the Airtable storage framework.
* `day5_airtable_node.png` - Detailed configuration panel showing field mappings and credential binding inside the Airtable action node.
* `day5_webhook_node.png` - Inspection view of the inbound Webhook trigger node displaying payload capture schemas and test endpoint configurations.
* `day5_My_workflow_v1.json` - Exported n8n workflow JSON schema containing full node configuration data for complete local pipeline reproduction.

---

## 🚀 Day 6: Workflow Hardening & Duplicate Detection Pipeline (v2)

Today marked the transition from a baseline ingestion workflow to an enterprise-grade, fault-tolerant orchestration pipeline. Workflow v2 introduces conditional data routing, duplicate submission filtering, auto-responder/notification logic, and explicit audit logging to maintain database integrity.

### 📌 Technical Concepts Mastered
* **Idempotency & Deduplication Patterns:** Engineered pre-ingestion database validation checks using Airtable dynamic formulas (`{Email} = '...'`) to ensure identical payload submissions do not pollute production bases.
* **Control Flow & Conditional Branching:** Implemented two-way evaluation logic via the `If` node, dynamically splitting execution pathways based on query result array states (`Is Not Empty`).
* **Non-Blocking Execution State Handling:** Enabled `Always Output Data` configurations on lookup nodes, forcing empty execution sets to pass downstream as structured null objects rather than breaking the pipeline run.
* **Global Target Mapping (`$('Node Name')`):** Overrode default sequential node inheritance by mapping payload properties directly from root trigger nodes (`$('Webhook')`), preventing schema degradation across empty conditional branches.
* **System Operations Audit Logging:** Constructed an isolated logging architecture (`System Logs` table) tracking asynchronous execution outcomes (`NEW_LEAD_INGESTED` vs. `DUPLICATE_BLOCK`) alongside standardized timestamp strings (`{{ $now }}`).

### 📂 Repository Contents
* `day6_My_Workflow_v2.json` - Complete exported n8n workflow v2 schema containing full conditional logic, SMTP credential bindings, and two-branch Airtable node mappings.
* `day6_My_workflow_v2.png` - Visual architecture graph showing live execution streams branching across duplicate handling and new lead ingestion pathways.
* `day6_System_Logs_Table.png` - Database verification screenshot showing structured operational audit logs (`Timestamp`, `Event Type`, `Lead Email`, `Status`).
* `day6_Lead_Capture_Table.png` - Primary lead database verification showing clean, unique record creation filtered free of duplicate entries.

---

## 🚀 Day 7: Final Capstone Presentation & Technical Reflection

The final day of the Week 1 Capstone was dedicated to system architecture documentation, repository finalization, and recording a comprehensive technical walkthrough evaluating the engineered system's design patterns, failure modes, and deployment execution.

### 📌 Technical Concepts Mastered
* **Architectural Communication:** Synthesized complex, multi-layered automation logic into a highly coherent, 8-minute technical video presentation tailored for engineering leadership.
* **Root-Cause Failure Analysis:** Verbally deconstructed live production bottlenecks—specifically detailing the transition from unstable reverse-proxy tunneling to persistent cloud network bridges.
* **Data Schema Auditing:** Demonstrated how the decoupled dual-branch architecture safeguards primary CRM databases while maintaining exhaustive telemetry logging for operational analysis.

### 📂 Repository Contents
* `week1_reflection_video.txt` - Deployment artifact containing the secure verification link to the full 8-minute Loom technical walkthrough, detailing the end-to-end pipeline execution from Google Forms trigger to Airtable and SMTP completion.

---

*Built as part of an advanced AI Operations & Automation Engineering track.*

---

# 🚀 AI Operations & Automation Engineering Portfolio

Welcome to my automation engineering portfolio. This repository documents a series of production-grade integration projects, moving from basic REST API interactions to autonomous, LLM-powered lead enrichment pipelines.

---

## 🛠️ Tech Stack & Infrastructure
* **Orchestration:** n8n (Self-Hosted)
* **Databases / CRM:** Airtable
* **Trigger Interfaces:** Google Forms & Google Apps Script
* **Networking & Security:** Cloudflare Tunnels (`cloudflared`), HTTPS Webhooks
* **AI & LLM Services:** OpenAI API (`gpt-5.6-luna`), Postman
* **Notifications:** SMTP (Gmail App Passwords)
* **Version Control:** Git, GitHub

