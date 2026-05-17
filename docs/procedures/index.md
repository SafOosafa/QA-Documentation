# Procedures Overview

This section describes the main procedures and components of the Notification Generator system.

## Component Index

| Procedure | Description |
|-----------|-------------|
| [Structure Management](structure-management.md) | Manage banks, applications, FCM topics, and buttons |
| [Notifications](notifications.md) | Create and manage notification templates and versions |
| [Sender](sender.md) | Send notifications to individual users |
| [Survey](survey.md) | Create and manage customer surveys |
| [Review](review.md) | Review and approve templates and surveys |
| [Operations](operations.md) | Manage bulk send operations |
| [Images](images.md) | Manage notification images |
| [Lists](lists.md) | Manage branches, areas, and classifications |
| [User Management](user-management.md) | User authentication, MFA, and device management |

## System Flow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  Structure  │────▶│Notification│────▶│   Sender    │
│  Management │     │  Template  │     │            │
└─────────────┘     └─────────────┘     └─────────────┘
      │                   │                   │
      │                   ▼                   ▼
      │            ┌─────────────┐     ┌─────────────┐
      │            │   Review    │     │    FCM      │
      │            │  Approval   │     │  (Firebase) │
      │            └─────────────┘     └─────────────┘
      │
      ▼
┌─────────────┐     ┌─────────────┐
│   Survey    │────▶│   Review    │
│             │     │             │
└─────────────┘     └─────────────┘
```
