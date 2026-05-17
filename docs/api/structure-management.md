# Structure Management API

API endpoints for managing banks, applications, topics, and subscriptions.

## AddBank

Add a new bank to the system.

**Endpoint:** `/api/StructureManagement/AddBank`

**Method:** POST

**Request Body:**
```json
{
    "name": "string",
    "code": "string",
    "description": "string"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "name": "string",
        "code": "string"
    }
}
```

---

## UpdateBank

Update bank details.

**Endpoint:** `/api/StructureManagement/UpdateBank`

**Method:** POST

**Request Body:**
```json
{
    "id": "guid",
    "name": "string",
    "code": "string",
    "description": "string"
}
```

---

## AddApplication

Register a new application with Firebase Cloud Messaging.

**Endpoint:** `/api/StructureManagement/AddApplication`

**Method:** POST

**Request Body:**
```json
{
    "bankId": "guid",
    "applicationName": "string",
    "firebaseProjectId": "string",
    "firebaseServerKey": "string"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "applicationName": "string",
        "bankId": "guid"
    }
}
```

---

## AddTopic

Create a new Firebase Cloud Messaging topic.

**Endpoint:** `/api/StructureManagement/AddTopic`

**Method:** POST

**Request Body:**
```json
{
    "name": "string",
    "description": "string",
    "applicationId": "guid"
}
```

---

## SubscribeCustomer

Subscribe a customer to an FCM topic.

**Endpoint:** `/api/StructureManagement/SubscribeCustomer`

**Method:** POST

**Request Body:**
```json
{
    "customerId": "guid",
    "topicName": "string"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Customer subscribed to topic successfully"
}
```
