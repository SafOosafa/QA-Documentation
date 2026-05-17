# Testing API

API endpoint for testing Firebase Cloud Messaging integration.

## TestFireBaseToken

Verify if a Firebase device token is valid and can receive notifications.

**Endpoint:** `/api/Testing/TestFireBaseToken`

**Method:** POST

**Request Body:**
```json
{
    "deviceToken": "string",
    "applicationId": "guid"
}
```

**Request Fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| deviceToken | string | Yes | FCM device token to test |
| applicationId | guid | Yes | Application ID |

**Response (Success):**
```json
{
    "success": true,
    "data": {
        "isValid": true,
        "tokenType": "android|ios|web",
        "message": "Token is valid and can receive notifications"
    }
}
```

**Response (Invalid Token):**
```json
{
    "success": true,
    "data": {
        "isValid": false,
        "message": "Token is invalid or expired"
    }
}
```

---

## Use Cases

- Verify tokens before sending critical notifications
- Diagnose delivery issues
- Validate token registration
- Test new FCM configurations

---

## Testing Checklist

Before going to production:
- [ ] Test with development FCM project
- [ ] Test with production FCM project
- [ ] Verify token refresh scenarios
- [ ] Test notification receipt on multiple devices
- [ ] Verify background/foreground handling
