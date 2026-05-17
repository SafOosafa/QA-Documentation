# Configuration Reference

Configuration settings for the Notification Generator system.

## BulkSend

Configuration for bulk send operations.

```json
"BulkSend": {
    "UcdBatchSize": 10000,
    "IngestInsertChunkSize": 5000,
    "GlobalDryRun": false,
    "GlobalSuppressPush": false
}
```

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| UcdBatchSize | int | 10000 | Maximum batch size for processing recipients |
| IngestInsertChunkSize | int | 5000 | Chunk size for database inserts during bulk operations |
| GlobalDryRun | bool | false | If true, no actual push notifications are sent |
| GlobalSuppressPush | bool | false | If true, suppresses all push notification delivery |

---

## TemplateStorage

Configuration for template storage limits.

```json
"TemplateStorage": {
    "MaxSavedNumber": 50
}
```

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| MaxSavedNumber | int | 50 | Maximum number of saved template versions |

---

## HangFireConfig

Configuration for background job processing (Hangfire).

```json
"HangFireConfig": {
    "ConnectionString": "...",
    "RetrySpans": [1, 1],
    "RetryAttempts": 1
}
```

| Setting | Type | Description |
|---------|------|-------------|
| ConnectionString | string | Database connection string for Hangfire |
| RetrySpans | array | Retry intervals in minutes |
| RetryAttempts | int | Number of retry attempts for failed jobs |

---

## EmailSender

Configuration for email notifications (problem reporting).

```json
"EmailSender": {
    "SmtpServer": "smtp.gmail.com",
    "SmtpPort": 587,
    "UserName": "",
    "Password": "",
    "ViewProblemsEmail": "..."
}
```

| Setting | Type | Description |
|---------|------|-------------|
| SmtpServer | string | SMTP server address |
| SmtpPort | int | SMTP server port |
| UserName | string | SMTP authentication username |
| Password | string | SMTP authentication password |
| ViewProblemsEmail | string | Email address for problem notifications |

---

## Jwt

Configuration for JWT token generation and validation.

```json
"Jwt": {
    "SecretKey": "...",
    "TokenTimeout": 30000,
    "RefreshTokenTimeout": 5000
}
```

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| SecretKey | string | (required) | Secret key for signing tokens |
| TokenTimeout | int | 30000 | Access token timeout in seconds |
| RefreshTokenTimeout | int | 5000 | Refresh token timeout in seconds |

---

## Mfa

Configuration for multi-factor authentication.

```json
"Mfa": {
    "Issuer": "MITF Notifications"
}
```

| Setting | Type | Description |
|---------|------|-------------|
| Issuer | string | Issuer name for MFA QR codes |

---

## PhysicalStorage

Configuration for file and image storage.

```json
"PhysicalStorage": {
    "URL": "https://localhost:7013",
    "ImageStorageLocation": "...",
    "FileStorageLocation": "..."
}
```

| Setting | Type | Description |
|---------|------|-------------|
| URL | string | Base URL for accessing stored files |
| ImageStorageLocation | string | Local path for image storage |
| FileStorageLocation | string | Local path for general file storage |

---

## Complete Configuration Example

```json
{
    "BulkSend": {
        "UcdBatchSize": 10000,
        "IngestInsertChunkSize": 5000,
        "GlobalDryRun": false,
        "GlobalSuppressPush": false
    },
    "TemplateStorage": {
        "MaxSavedNumber": 50
    },
    "HangFireConfig": {
        "ConnectionString": "Server=...;Database=...;",
        "RetrySpans": [1, 1],
        "RetryAttempts": 1
    },
    "EmailSender": {
        "SmtpServer": "smtp.gmail.com",
        "SmtpPort": 587,
        "UserName": "",
        "Password": "",
        "ViewProblemsEmail": "support@example.com"
    },
    "Jwt": {
        "SecretKey": "your-secret-key-here",
        "TokenTimeout": 30000,
        "RefreshTokenTimeout": 5000
    },
    "Mfa": {
        "Issuer": "MITF Notifications"
    },
    "PhysicalStorage": {
        "URL": "https://localhost:7013",
        "ImageStorageLocation": "C:\\Storage\\Images",
        "FileStorageLocation": "C:\\Storage\\Files"
    }
}
```
