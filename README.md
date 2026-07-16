# 🧪 API Fundamentals Lab

## 📌 Overview

This repository documents my early hands-on learning while studying REST APIs, HTTP, JSON, Postman, Git, and workflow automation.

Rather than serving as a standalone portfolio project, this repository functions as my engineering lab notebook, capturing the concepts, experiments, and mini-projects that laid the foundation for my AI Business Systems Engineering journey.

As my skills progressed, larger production-ready systems were moved into their own dedicated repositories.

---

# 🎯 Learning Objectives

This repository explores the practical foundations of:

- REST APIs
- HTTP Methods
- JSON Data Structures
- API Authentication
- Query Parameters
- Postman
- Webhooks
- n8n Workflow Automation
- Airtable Integration
- Cloudflare Tunnel
- Git & GitHub

---

# 📅 Learning Timeline

## 🚀 Day 1 — API Fundamentals & Data Collection

Focused on understanding REST APIs, HTTP requests, JSON responses, and retrieving data from public APIs using Postman.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `Cat Fact JSON.json` | Example single-object JSON response used to understand simple key-value structures. |
| `Fake User JSON.json` | Mock customer record illustrating a CRM-style JSON object. |
| `Current weather data JSON.json` | Weather API response containing nested objects and arrays. |
| `Bitcoin price JSON.json` | Financial dataset demonstrating dynamic multi-currency JSON structures. |
| `Massive Peru Object JSON.json` | Large nested JSON payload used to practice navigating complex API responses. |

---

## 🚀 Day 2 — JSON Deep Dive & POST Requests

Focused on understanding JSON structures, creating resources via POST requests, and interpreting HTTP response codes.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `day2_success.png` | Screenshot showing a successful POST request returning a **201 Created** response. |
| `day2_post_response.json` | Server response confirming successful creation of a new resource. |

---

## 🚀 Day 3 — API Authentication & Query Parameters

Focused on secure API access, request headers, Bearer Tokens, API Keys, and filtering data using query parameters.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `day3_bearer_success.png` | Successful authenticated API request using a Bearer Token. |
| `day3_query_filter.png` | Filtered API response using URL query parameters. |
| `day3_bearer_success JSON.json` | JSON response returned after successful authentication. |
| `day3_query_filter JSON.json` | Filtered dataset returned from the API. |

---

## 🚀 Day 4 — Workflow Automation Fundamentals

Introduced node-based workflow automation using n8n.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `day4_n8n_canvas.png` | Screenshot of the first n8n workflow demonstrating automated data flow. |
| `day4_n8n_output.json` | Example JSON payload processed inside the workflow. |

---

## 🚀 Day 5 — Automated Lead Capture Pipeline (v1)

Built the first end-to-end workflow connecting Google Forms, Google Apps Script, Cloudflare Tunnel, n8n, and Airtable.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `day5_workflow_v1.png` | Workflow architecture showing Google Forms through Airtable. |
| `day5_airtable_log.png` | Airtable verification showing successful lead capture. |
| `day5_airtable_node.png` | Airtable node configuration inside n8n. |
| `day5_webhook_node.png` | Webhook trigger configuration receiving Google Form submissions. |
| `day5_My_workflow_v1.json` | Exported n8n workflow for the initial lead ingestion pipeline. |

---

## 🚀 Day 6 — Workflow Hardening & Duplicate Detection

Expanded the workflow with duplicate detection, conditional branching, SMTP notifications, and audit logging.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `day6_My_Workflow_v2.json` | Exported n8n workflow implementing duplicate detection and conditional routing. |
| `day6_My_workflow_v2.png` | Updated workflow architecture with branching logic. |
| `day6_System_Logs_Table.png` | Airtable System Logs table capturing workflow events. |
| `day6_Lead_Capture_Table.png` | Lead Capture table showing validated, duplicate-free records. |

---

## 🚀 Day 7 — Technical Walkthrough & Reflection

Concluded the learning lab by documenting the workflow architecture and recording a complete engineering walkthrough.

### 📂 Repository Contents

| File | Description |
|------|-------------|
| `week1_reflection_video.txt` | Contains the secure Loom link to the complete technical walkthrough explaining the architecture, implementation, debugging process, and lessons learned. |

---

# 🛠️ Technologies Explored

### APIs

- REST APIs
- HTTP
- JSON

### Workflow Automation

- n8n
- Webhooks
- Google Apps Script

### Database

- Airtable

### Networking

- Cloudflare Tunnel

### Development Tools

- Postman
- Git
- GitHub

---

# 🚀 Portfolio Projects

The concepts explored in this repository were later applied to larger production-style AI automation systems.

Current portfolio repositories include:

- 🤖 **AI Lead Intelligence Platform**
- 💰 **Finance AI Assistant** *(Coming Soon)*
- ☁️ **Salesforce AI Automation** *(Coming Soon)*
- 🏢 **AI Business Operating System** *(Coming Soon)*

---

# 📚 Purpose of this Repository

This repository is maintained as a record of my engineering learning journey.

It documents the progression from foundational API concepts to workflow automation before transitioning into larger AI-powered business systems.

For production-ready portfolio projects, please visit the repositories listed above.