# Database Reference

Complete database schema for the Notification Generator system.

## Overview

The database consists of the following main entity groups:

| Group | Tables |
|-------|--------|
| Core Entities | Banks, Applications, Topics, Buttons |
| Notifications | Notifications, NotificationVersions |
| Surveys | Surveys, BulkSendJobs |
| Media | Images |
| Users | Users, UserRefreshTokens, CustomerDevices |
| Logging | ActivityLogs, Notification_logs, Notification_SemiLog |

---

## Core Entities

### Banks

Stores financial institution information.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| Name | NVARCHAR | Bank name |
| Code | NVARCHAR | Bank code |
| Description | NVARCHAR | Description |
| CreatedAt | DATETIME | Creation timestamp |

### Applications

Registered mobile applications with Firebase.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| BankId | GUID | Foreign key to Banks |
| ApplicationName | NVARCHAR | App name |
| FirebaseProjectId | NVARCHAR | FCM project ID |
| FirebaseServerKey | NVARCHAR | FCM server key |
| CreatedAt | DATETIME | Creation timestamp |

### Topics

Firebase Cloud Messaging topics.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| Name | NVARCHAR | Topic name |
| Description | NVARCHAR | Description |
| ApplicationId | GUID | Foreign key to Applications |

### Buttons

Interactive notification buttons.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| NotificationId | GUID | Foreign key to Notifications |
| ButtonId | NVARCHAR | Button identifier |
| Text | NVARCHAR | Button text |
| Action | NVARCHAR | Action URL or handler |

---

## Notifications

### Notifications

Main notification templates.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| Title | NVARCHAR | Notification title |
| Body | NVARCHAR | Notification body |
| Data | JSON | Custom payload |
| ApplicationId | GUID | Foreign key to Applications |
| Status | NVARCHAR | Draft/Active/Inactive |
| CreatedAt | DATETIME | Creation timestamp |
| UpdatedAt | DATETIME | Last update timestamp |

### NotificationVersions

Version history for notifications.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| NotificationId | GUID | Foreign key to Notifications |
| Version | INT | Version number |
| Title | NVARCHAR | Title at this version |
| Body | NVARCHAR | Body at this version |
| CreatedAt | DATETIME | Version creation timestamp |

---

## Surveys

### Surveys

Customer survey templates.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| Title | NVARCHAR | Survey title |
| Description | NVARCHAR | Survey description |
| Questions | JSON | Question definitions |
| ApplicationId | GUID | Target application |
| StartDate | DATETIME | Survey start date |
| EndDate | DATETIME | Survey end date |
| Status | NVARCHAR | Draft/Active/Expired |
| CreatedAt | DATETIME | Creation timestamp |

### BulkSendJobs

Bulk notification send jobs.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| NotificationId | GUID | Notification template ID |
| Status | NVARCHAR | Pending/Running/Completed/Cancelled |
| TotalRecipients | INT | Total recipients count |
| ProcessedCount | INT | Processed count |
| SentCount | INT | Successfully sent count |
| FailedCount | INT | Failed count |
| StartedAt | DATETIME | Job start time |
| CompletedAt | DATETIME | Job completion time |

---

## Users

### Users

System user accounts.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| Username | NVARCHAR | Username |
| PasswordHash | NVARCHAR | Hashed password |
| Email | NVARCHAR | Email address |
| BankId | GUID | Associated bank |
| IsActive | BIT | Active status |
| CreatedAt | DATETIME | Creation timestamp |

### UserRefreshTokens

JWT refresh tokens.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| UserId | GUID | Foreign key to Users |
| Token | NVARCHAR | Refresh token |
| ExpiresAt | DATETIME | Expiration time |
| CreatedAt | DATETIME | Creation timestamp |

### CustomerDevices

Registered FCM device tokens.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| CustomerId | GUID | Customer identifier |
| DeviceToken | NVARCHAR | FCM token |
| DeviceType | NVARCHAR | android/ios/web |
| ApplicationId | GUID | Application ID |
| IsActive | BIT | Token active status |
| UpdatedAt | DATETIME | Last update timestamp |

---

## Logging

### ActivityLogs

General system activity logs.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| UserId | GUID | User who performed action |
| Action | NVARCHAR | Action type |
| EntityType | NVARCHAR | Entity affected |
| EntityId | GUID | Entity ID |
| Details | JSON | Action details |
| CreatedAt | DATETIME | Timestamp |

### Notification_logs

Detailed notification delivery logs.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| NotificationId | GUID | Notification ID |
| UserId | GUID | Target user |
| DeviceToken | NVARCHAR | Target device |
| Status | NVARCHAR | Sent/Failed/Delivered |
| FcmMessageId | NVARCHAR | FCM message ID |
| ErrorMessage | NVARCHAR | Error details if failed |
| SentAt | DATETIME | Send timestamp |

### Notification_SemiLog

Semi-processed notification logs for analytics.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| NotificationId | GUID | Notification ID |
| CustomerId | GUID | Customer identifier |
| Status | NVARCHAR | Status summary |
| CreatedAt | DATETIME | Timestamp |

---

## Images

### Images

Stored notification images.

| Column | Type | Description |
|--------|------|-------------|
| Id | GUID | Primary key |
| FileName | NVARCHAR | Original filename |
| StoragePath | NVARCHAR | Physical storage path |
| ContentType | NVARCHAR | MIME type |
| Size | BIGINT | File size |
| CreatedAt | DATETIME | Upload timestamp |
