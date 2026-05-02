# HN News Digest Agent

Automated agent that scrapes HackerNews frontpage, filters by tech keywords, and generates a daily curated news digest.

## Features
- Fetches top 30 stories from HN API
- Filters by 40+ tech keywords (AI/ML, languages, cloud, security, etc.)
- Sorts by score and formats into markdown digest
- Logs all activity

## Usage

```bash
python3 agent.py
```

## Cron Setup (Daily at 9 AM)
```cron
0 9 * * * /root/hn-news-digest/run-daily.sh
```

## Output
- Digest saved to: `/root/hn-digest.md`
- Log file: `/root/hn-digest.log`
