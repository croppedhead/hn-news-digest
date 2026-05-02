# HN News Digest Agent - A10

## Status: ✅ Created

## Files Created
- `agent.py` - Main Python agent (fetches HN API, filters by keywords, generates digest)
- `run-daily.sh` - Bash script for cron execution  
- `README.md` - Documentation

## How It Works
1. Fetches top 30 story IDs from HackerNews Firebase API
2. For each story, fetches details (title, URL, score, comments)
3. Filters stories containing tech keywords (AI, ML, Python, Rust, Cloud, Security, etc.)
4. Sorts filtered stories by score (highest first)
5. Formats into a markdown digest with emojis and links
6. Saves to `/root/hn-digest.md`

## Keywords Filtered
- AI/ML: ai, machine learning, llm, gpt, neural, openai
- Languages: python, javascript, typescript, rust, golang, java
- Cloud/DevOps: kubernetes, docker, aws, azure, gcp
- Security: security, vulnerability, exploit, privacy
- Developer: developer, programming, framework, open source, github
- Data: api, database, postgres, mysql, mongodb
- Web: web, browser, frontend, backend, react, node

## Agent Chain (A1-A9)
This agent uses results from previous agents via `agent-results.tsv` pattern:
- A1: Base infrastructure
- A2-A9: Sequential processing agents
- A10: Final digest generation
