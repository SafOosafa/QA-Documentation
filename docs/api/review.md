# Review API

API endpoints for reviewing and approving notification templates and surveys.

## ReviewTemplate

Submit a notification template for review.

**Endpoint:** `/api/Review/ReviewTemplate`

**Method:** POST

**Request Body:**
```json
{
    "notificationId": "guid",
    "comments": "string"
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| notificationId | guid | Yes | Template to review |
| comments | string | No | Review comments |

**Response:**
```json
{
    "success": true,
    "data": {
        "reviewId": "guid",
        "status": "pending_review",
        "submittedAt": "datetime"
    }
}
```

---

## ReviewSurvey

Submit a survey for review.

**Endpoint:** `/api/Review/ReviewSurvey`

**Method:** POST

**Request Body:**
```json
{
    "surveyId": "guid",
    "comments": "string"
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| surveyId | guid | Yes | Survey to review |
| comments | string | No | Review comments |

**Response:**
```json
{
    "success": true,
    "data": {
        "reviewId": "guid",
        "status": "pending_review",
        "submittedAt": "datetime"
    }
}
```

---

## Review Workflow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Draft     │────▶│  Submitted  │────▶│   Review    │
└─────────────┘     └─────────────┘     └─────────────┘
                                           │       │
                                    ┌──────┘       └──────┐
                                    ▼                     ▼
                             ┌─────────────┐     ┌─────────────┐
                             │  Approved   │     │  Rejected   │
                             └─────────────┘     └─────────────┘
```

## Review Actions

| Action | Description |
|--------|-------------|
| Approve | Accept for use in the system |
| Reject | Return with revision requirements |
| Request Changes | Request specific modifications |
