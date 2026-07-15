# ⚡ Sprint 2: Automated AI Lead Research Engine (Yellow House Systems)

## 📌 Executive Summary
Sprint 2 transitions our lead ingestion infrastructure from mechanical routing to **intelligent automated enrichment**. Operating on behalf of client **Yellow House Systems**, this sprint integrates LLM endpoints (OpenAI / Anthropic) into the primary n8n pipeline to perform dynamic B2B company research, target account scoring, and automated outreach drafting.

---

## 🎯 Sprint Objectives & Client Scope
* **Client Ticket:** Yellow House Systems — *"Research every new lead automatically."*
* **Core Goal:** Intercept unique inbound lead submissions, extract company metadata, query LLM APIs for real-time account intelligence, append research summaries and outreach copy back to Airtable, and deliver formatted email drafts to the sales team.
* **Architecture:** Google Forms / Webhook $\rightarrow$ Cloudflare Tunnel $\rightarrow$ Multi-Base Airtable Ingestion $\rightarrow$ OpenAI API Node $\rightarrow$ JSON Schema Parsing $\rightarrow$ Conditional Fallback Gate $\rightarrow$ CRM Enrichment & HTML Email Delivery.

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

### 🔵 Days 4–6 (Thursday – Saturday): End-to-End Orchestration, Multi-Base Routing & Fault Tolerance
* **Objective:** Orchestrate the complete live lead enrichment pipeline in n8n via Cloudflare Tunnel, route data across multiple Airtable bases, handle response parsing errors, and trigger real-time HTML email notifications.
* **Key Achievements:**
  * Connected live Google Form submissions to local n8n instance via **Cloudflare Tunnel** (`cloudflared`).
  * Implemented multi-base routing: logged master leads into `Sprint 1 Base` while sending target company profiles to `Sprint 2 Base` for AI enrichment.
  * Addressed structured output array nesting by mapping `content[0].text` dynamic properties directly to downstream nodes.
  * Implemented enterprise error handling: configured automatic retry logic on API timeouts and designed an `If` decision gate routing to fallback default records (`RESEARCH_PENDING`) upon API failure.
  * Integrated an HTML Email Notification Node that parses line breaks (`<br>`) and formats personalized cold outreach copy directly to the team's inbox.
* **Artifacts:** `sprint2_n8n_canvas_e2e.png`, `sprint2_workflow_v3.json`

---

### 🔵 Day 7: Multi-Scenario Routing, Guardrails & System Audit Logging
* **Objective:** Bulletproof the pipeline against duplicates, implement automatic contact-company profile updates for returning leads, apply LLM hallucination guardrails, and produce real-time audit logs.
* **Key Achievements:**
  * Developed a two-tier conditional logic flow evaluating both Contact Email and Company Name with search-limit controls to normalize array looping.
  * Engineered error-resilient branching utilizing skipped-node execution fallbacks to seamlessly separate **New Leads** from **Returning Leads with New Companies**.
  * Configured system prompt guardrails forcing `COMPANY_NOT_FOUND` outputs for fake/invalid account names.
  * Configured multi-channel notifications (Slack and Gmail) alongside a centralized **System Log Table** logging timestamps, actions (`SYSTEM LOG UPDATE`, `SYSTEM LOG NEW`), and execution statuses.
* **Artifacts:** `sprint2_n8n_canvas_final.png`, `sprint2_workflow_v3.json`

---

## 📂 Sprint Deliverables
* `sprint2_day1_test_script.sh` - Standard cURL script executing an authenticated chat completion query.
* `sprint2_day1_postman.png` - Proof of HTTP 200 response from LLM API test query.
* `Sprint2_days_2_&_3_postman.png` - Proof of structured JSON prompt execution containing research summary and dual outreach drafts.
* `Sprint2_days_2_&_3_Lead_Airtable.png` - Airtable verification showing fully populated research and outreach columns.
* `sprint2_n8n_canvas_e2e.png` - Full n8n execution canvas showing Webhook, multi-base Airtable, OpenAI, decision gate, and Email nodes.
* `sprint2_workflow_v3.json` - Exported end-to-end n8n workflow file.
* `sprint2_n8n_canvas_updated.png` - Finalized n8n execution canvas containing all conditional gates, guardrails, and System Log nodes.
* `sprint2_workflow_v3.2.json` - Exported end-to-end multi-scenario n8n workflow file.