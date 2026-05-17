# User Management API

API endpoints for user authentication, registration, and management.

## SignIn

Authenticate a user and receive JWT tokens.

**Endpoint:** `/api/UserManagement/SignIn`

**Method:** POST

**Request Body:**
```json
{
    "username": "string",
    "password": "string"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "accessToken": "string",
        "refreshToken": "string",
        "expiresIn": 30000
    }
}
```

**Token Configuration:**
```json
"Jwt": {
    "SecretKey": "...",
    "TokenTimeout": 30000,
    "RefreshTokenTimeout": 5000
}
```

---

## AddUser

Create a new user account.

**Endpoint:** `/api/UserManagement/AddUser`

**Method:** POST

**Request Body:**
```json
{
    "username": "string",
    "password": "string",
    "email": "string",
    "role": "string",
    "bankId": "guid"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "id": "guid",
        "username": "string",
        "email": "string",
        "isActive": true
    }
}
```

---

## ChangeUserActivation

Activate or deactivate a user account.

**Endpoint:** `/api/UserManagement/ChangeUserActivation`

**Method:** POST

**Request Body:**
```json
{
    "userId": "guid",
    "isActive": boolean
}
```

**Response:**
```json
{
    "success": true,
    "message": "User activation status updated"
}
```

---

## StartMfaSetup

Initiate multi-factor authentication setup.

**Endpoint:** `/api/UserManagement/StartMfaSetup`

**Method:** POST

**Request Body:**
```json
{
    "userId": "guid"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "mfaToken": "string",
        "qrCodeUrl": "string",
        "issuer": "MITF Notifications"
    }
}
```

**MFA Configuration:**
```json
"Mfa": {
    "Issuer": "MITF Notifications"
}
```

---

## Refresh Token

Refresh an expired access token.

**Request:**
```json
{
    "refreshToken": "string"
}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "accessToken": "string",
        "expiresIn": 30000
    }
}
```
