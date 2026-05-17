# Sender

The Sender component handles sending notifications to individual users via Firebase Cloud Messaging.

## Overview

Send notifications directly to specific users or devices registered in the system.

## Features

### Direct Messaging

Send notifications to:
- Individual device tokens
- User accounts
- Multiple recipients

### Message Delivery

| Setting | Description |
|---------|-------------|
| **Target** | Device token or user identifier |
| **Payload** | Notification data and content |
| **Priority** | High or normal priority delivery |
| **TTL** | Time-to-live for the message |

## Sender Configuration

The sender module supports:
- Connection to Firebase Cloud Messaging
- Token validation
- Delivery status tracking
- Error handling and retries

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/Sender/SendNotification` | POST | Send a notification to a specific target |

## Testing

Use the Testing API to validate Firebase tokens before sending production notifications:
- `/api/Testing/TestFireBaseToken` - Verify token validity
