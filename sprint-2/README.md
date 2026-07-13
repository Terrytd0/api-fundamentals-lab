# ⚡ Sprint 2: Automated AI Lead Research Engine (Yellow House Systems)

## 📌 Executive Summary
Sprint 2 transitions our lead ingestion infrastructure from mechanical routing to **intelligent automated enrichment**. Operating on behalf of client **Yellow House Systems**, this sprint integrates LLM endpoints (OpenAI / Anthropic) into the primary n8n pipeline to perform dynamic B2B company research, target account scoring, and automated outreach drafting.

---

## 🎯 Sprint Objectives & Client Scope
* **Client Ticket:** Yellow House Systems — *"Research every new lead automatically."*
* **Core Goal:** Intercept unique inbound lead submissions, extract company metadata, query LLM APIs for real-time account intelligence, and append research summaries and outreach copy back to Airtable.
* **Architecture:** Ingestion Webhook $\rightarrow$ Deduplication Check $\rightarrow$ OpenAI/Anthropic API Node $\rightarrow$ JSON Schema Parsing $\rightarrow$ CRM Enrichment & Notification.

---

## 📅 Daily Execution Log

### 🔵 Day 1 (Monday): LLM API Authentication & Handshake
* **Objective:** Establish developer API access, configure standard POST request bodies, and verify `200 OK` JSON completions.
* **Key Achievements:**
  * Configured OpenAI developer credentials on standard real-time processing mode.
  * Successfully executed authenticated HTTP POST requests via Postman using `Bearer` token authorization.
  * Validated token usage and response structures for automated parsing.
* **Artifacts:** `sprint2_day1_test_script.sh`, `sprint2_day1_postman.png`

### 🔵 Days 2 & 3 (Tuesday & Wednesday): Prompt Engineering, Research & Outreach Generation
* **Objective:** Engineer structured prompt payloads that analyze target account names and return high-conviction company summaries along with personalized cold email and LinkedIn outreach drafts.
* **Key Achievements:**
  * Created a dedicated `Sprint 2 - Yellow House Systems` CRM table with target schema: `Company`, `Company Research`, `Cold Email Draft`, and `LinkedIn Intro`.
  * Designed system and user prompts utilizing OpenAI's JSON Mode (`response_format: { "type": "json_object" }`) to force deterministic JSON outputs.
  * Evaluated generated B2B intelligence and multi-channel outreach copy using `Airtable` as the primary test target.
  * Manually mapped and verified output payloads directly into the target CRM base.
* **Artifacts:** `Sprint2_days_2_&_3_postman.png`, `Sprint2_days_2_&_3_Lead_Airtable.png`

---

## 📂 Sprint Deliverables
* `sprint2_day1_test_script.sh` - Standard cURL script executing an authenticated chat completion query.
* `sprint2_day1_postman.png` - Proof of HTTP 200 response from LLM API test query.
* `Sprint2_days_2_&_3_postman.png` - Proof of structured JSON prompt execution containing research summary and dual outreach drafts.
* `Sprint2_days_2_&_3_Lead_Airtable.png` - Airtable verification showing fully populated research and outreach columns.
* `sprint2_workflow_v3.json` - *(In Progress)* n8n workflow incorporating LLM research and outreach nodes.