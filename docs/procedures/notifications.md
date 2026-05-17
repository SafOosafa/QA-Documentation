# Notifications

The Notifications component handles creating, managing, and versioning notification templates.

## Overview

Notifications are the core message templates sent to users via Firebase Cloud Messaging (FCM).

## Features

### Notification Templates

Create reusable notification templates with:
- Title and body content
- Custom data payloads
- Image attachments
- Interactive buttons
- Targeting rules

### Versioning

Track changes to notifications through versions:
- Maintain history of all changes
- Rollback to previous versions
- Compare versions
- Track approval status per version

### Notification Management

| Feature | Description |
|---------|-------------|
| **Add Notification** | Create a new notification template |
| **Update Notification** | Modify existing notification |
| **Get Notifications** | Retrieve notifications with filtering and pagination |
| **Clone Notification** | Duplicate an existing notification for modification |

## Notification Structure

| Field | Type | Description |
|-------|------|-------------|
| Title | string | Notification title |
| Body | string | Notification body text |
| Data | object | Custom key-value payload |
| Image | string | Image URL or attachment |
| Buttons | array | Interactive button definitions |
| Topic | string | Target FCM topic (optional) |
| Priority | string | Message priority (high/normal) |

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/Notifications/AddNotification` | POST | Create a new notification |
| `/api/Notifications/UpdateNotification` | POST | Update an existing notification |
| `/api/Notifications/GetNotifications` | GET | Retrieve notifications with filtering |
| `/api/Notifications/CloneNotification` | POST | Clone an existing notification |
