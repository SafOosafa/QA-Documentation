# BulkSend API

API endpoints for managing bulk notification sending operations via CSV.

## Start

Start a bulk send job from a CSV file.

**Endpoint:** `/api/BulkSend/Start`

**Method:** POST

**Request Body:**
```json
{
    "notificationId": "guid",
    "csvFilePath": "string",
    "paginationSize": 1000
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| notificationId | guid | Yes | Template notification ID |
| csvFilePath | string | Yes | Path to CSV file with recipients |
| paginationSize | int | No | Batch size for processing (default: 1000) |

**Response:**
```json
{
    "success": true,
    "data": {
        "jobId": "guid",
        "status": "pending",
        "totalRecipients": 10000,
        "startedAt": "datetime"
    }
}
```

---

## GetJob

Get the status of a bulk send job.

**Endpoint:** `/api/BulkSend/GetJob`

**Method:** GET

**Query Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| jobId | guid | Bulk send job ID |

**Response:**
```json
{
    "success": true,
    "data": {
        "jobId": "guid",
        "status": "running",
        "totalRecipients": 10000,
        "processed": 5000,
        "sent": 4950,
        "failed": 50,
        "startedAt": "datetime",
        "completedAt": "datetime"
    }
}
```

**Job Status Values:**

| Status | Description |
|--------|-------------|
| pending | Job created but not started |
| running | Job currently executing |
| completed | Job finished successfully |
| cancelled | Job was manually cancelled |
| failed | Job encountered errors |

---

## Cancel

Cancel a pending or running bulk send job.

**Endpoint:** `/api/BulkSend/Cancel`

**Method:** POST

**Request Body:**
```json
{
    "jobId": "guid"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Job cancellation requested"
}
```

---

## BulkSend Configuration

Configuration applied to bulk send operations:

```json
"BulkSend": {
    "UcdBatchSize": 10000,
    "IngestInsertChunkSize": 5000,
    "GlobalDryRun": false,
    "GlobalSuppressPush": false
}
```

| Setting | Description |
|---------|-------------|
| UcdBatchSize | Maximum batch size for processing |
| IngestInsertChunkSize | Chunk size for database inserts |
| GlobalDryRun | If true, no actual push notifications are sent |
| GlobalSuppressPush | If true, suppresses push delivery |
