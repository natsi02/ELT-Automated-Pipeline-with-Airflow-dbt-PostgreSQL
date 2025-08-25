# Online Sales ELT Automated Pipeline with Airflow, dbt and PostgreSQL
## 📌 Project Overview
This project demonstrates a production-style Data Engineering pipeline using modern data stack.
It ingests online sales data from Kaggle, orchestrates extraction, loading and transforms with Apache Airflow, transform 
the raw data into analystics-ready models within a dedicated data mart schema using dbt, and serves insights through interactive Apache Superset dashboards

**Goal:** Simulate a real-world ELT pipeline for an e-commerce company to enable better reporting and decision-making.

## 🏗️ Project Architecture
<img width="780" height="541" alt="Image" src="https://github.com/user-attachments/assets/36369feb-d13d-446c-9519-389715c8619a" />

## ⚙️ Tech Stack
- Python → Data extraction & loading (Pandas + SQLAlchemy)
- Postgres → Data warehouse (raw + analytics schemas)
- dbt → SQL transformations, models, lineage, data quality tests
- Apache Airflow → Workflow orchestration, scheduling, monitoring
- Docker Compose → Containerized setup for reproducibility
- Apache Superset → Interactive dashboards & BI visualization

## ✅ Features
- End-to-end ELT pipeline with modern tools
- Orchestrated with Airflow (daily schedule + retries)
- dbt lineage & tests for data quality
- Dockerized for easy setup (1 command to start all services)
- BI dashboard for stakeholders

## 📊 Dashboard
<img width="1892" height="934" alt="Image" src="https://github.com/user-attachments/assets/b5e7c19d-fa23-4412-b416-6c672d6aa2ae" />
