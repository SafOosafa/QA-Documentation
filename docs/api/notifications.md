# Notifications API

API endpoints for managing notification templates and versions.

## AddNotification

Create a new notification template.

**Endpoint:** `/api/Notifications/AddNotification`

**Method:** POST

**Request Body:**
```json
{
    "title": "string",
    "body": "string",
    "data": {},
    "imageUrl": "string",
    "applicationId": "guid",
    "topicName": "string",
    "priority": "high|normal",
    "buttons": [
        {
            "id": "string",
            "text": "string",
            "action": "string"
        }
    ]
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "title": "string",
        "version": 1
    }
}
```

---

## UpdateNotification

Update an existing notification template.

**Endpoint:** `/api/Notifications/UpdateNotification`

**Method:** POST

**Request Body:**
```json
{
    "id": "guid",
    "title": "string",
    "body": "string",
    "data": {},
    "imageUrl": "string",
    "priority": "high|normal",
    "buttons": []
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "version": 2
    }
}
```

---

## GetNotifications

Retrieve notifications with filtering and pagination.

**Endpoint:** `/api/Notifications/GetNotifications`

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
                "body": "string",
                "version": 1,
                "status": "string",
                "createdAt": "datetime"
            }
        ],
        "totalCount": 100,
        "page": 1,
        "pageSize": 20
    }
}
```

---

## CloneNotification

Clone an existing notification template.

**Endpoint:** `/api/Notifications/CloneNotification`

**Method:** POST

**Request Body:**
```json
{
    "notificationId": "guid",
    "newTitle": "string"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "clonedFrom": "guid",
        "title": "string"
    }
}
```
