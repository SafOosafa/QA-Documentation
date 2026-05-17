# Operations

The Operations component manages bulk send operations and job tracking.

## Overview

Monitor and manage large-scale notification sending operations including CSV-based bulk sends.

## Features

### Bulk Operations

| Feature | Description |
|---------|-------------|
| **Job Tracking** | Monitor active and completed bulk jobs |
| **Progress Monitoring** | Track sending progress in real-time |
| **Cancellation** | Cancel pending or in-progress jobs |
| **Pagination** | Handle large recipient lists efficiently |

### Job States

| State | Description |
|-------|-------------|
| Pending | Job created but not started |
| Running | Job currently executing |
| Completed | Job finished successfully |
| Cancelled | Job was manually cancelled |
| Failed | Job encountered errors |

## Operations Dashboard

View operations status including:
- Total messages to send
- Messages successfully delivered
- Failed deliveries
- Current rate of sending

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/BulkSend/Start` | POST | Start a bulk send job |
| `/api/BulkSend/GetJob` | GET | Get status of a bulk send job |
| `/api/BulkSend/Cancel` | POST | Cancel a bulk send job |
