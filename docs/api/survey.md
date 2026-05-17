# Survey API

API endpoints for creating and managing customer surveys.

## AddSurvey

Create a new survey.

**Endpoint:** `/api/Survey/AddSurvey`

**Method:** POST

**Request Body:**
```json
{
    "title": "string",
    "description": "string",
    "questions": [
        {
            "id": "string",
            "type": "text|choice|rating",
            "text": "string",
            "options": ["string"],
            "required": true
        }
    ],
    "targetApplicationId": "guid",
    "startDate": "datetime",
    "endDate": "datetime"
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| title | string | Yes | Survey title |
| description | string | No | Survey description |
| questions | array | Yes | Array of question objects |
| targetApplicationId | guid | Yes | Target application |
| startDate | datetime | No | Survey availability start |
| endDate | datetime | No | Survey availability end |

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "title": "string",
        "status": "draft"
    }
}
```

---

## GetSurveys

Retrieve surveys with filtering.

**Endpoint:** `/api/Survey/GetSurveys`

**Method:** GET

**Query Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| page | int | Page number (default: 1) |
| pageSize | int | Items per page (default: 20) |
| applicationId | guid | Filter by application |
| status | string | Filter by status |

**Response:**
```json
{
    "success": true,
    "data": {
        "items": [
            {
                "id": "guid",
                "title": "string",
                "description": "string",
                "status": "active|draft|expired",
                "responseCount": 150,
                "startDate": "datetime",
                "endDate": "datetime"
            }
        ],
        "totalCount": 25,
        "page": 1,
        "pageSize": 20
    }
}
```

---

## Question Types

| Type | Description |
|------|-------------|
| text | Free-text response |
| choice | Single or multiple choice |
| rating | Rating scale (e.g., 1-5 stars) |
