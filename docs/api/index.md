# API Reference

Complete reference for all Notification Generator APIs.

## API Categories

| Category | Description |
|----------|-------------|
| [Structure Management](structure-management.md) | Banks, applications, topics, buttons |
| [Notifications](notifications.md) | Notification templates and versions |
| [Sender](sender.md) | Direct notification sending |
| [BulkSend](bulk-send.md) | Bulk send operations |
| [Survey](survey.md) | Survey creation and management |
| [Review](review.md) | Template and survey review |
| [UserManagement](user-management.md) | User authentication and management |
| [Testing](testing.md) | Firebase token testing |

## Base URL

```
/api/{Endpoint}
```

## Authentication

Most endpoints require JWT authentication via the `Authorization` header:

```
Authorization: Bearer {token}
```

## Response Format

All APIs return JSON responses with the following structure:

```json
{
    "success": true,
    "data": { },
    "message": "Operation completed successfully"
}
```

## Error Responses

| Status Code | Description |
|-------------|-------------|
| 400 | Bad Request - Invalid parameters |
| 401 | Unauthorized - Invalid or missing token |
| 403 | Forbidden - Insufficient permissions |
| 404 | Not Found - Resource not found |
| 500 | Internal Server Error |
