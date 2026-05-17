# Sender API

API endpoint for sending notifications to individual users.

## SendNotification

Send a notification to a specific user or device.

**Endpoint:** `/api/Sender/SendNotification`

**Method:** POST

**Request Body:**
```json
{
    "notificationId": "guid",
    "userId": "guid",
    "deviceToken": "string",
    "data": {},
    "priority": "high|normal"
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| notificationId | guid | Yes | Template notification ID |
| userId | guid | No | Target user ID |
| deviceToken | string | No | FCM device token |
| data | object | No | Custom data payload |
| priority | string | No | Message priority |

**Response:**
```json
{
    "success": true,
    "data": {
        "messageId": "string",
        "status": "sent",
        "sentAt": "datetime"
    }
}
```

**Error Responses:**

| Status | Description |
|--------|-------------|
| 400 | Invalid request parameters |
| 404 | Notification or user not found |
| 500 | Firebase delivery failed |

---

## FireBase Delivery Flow

```
Your Application
      │
      ▼
Sender API
      │
      ▼
Firebase Cloud Messaging
      │
      ├──▶ Device (if online)
      │
      └──▶ FCM Storage (if offline)
             │
             ▼
         Device (when online)
```
