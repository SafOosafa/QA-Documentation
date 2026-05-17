# MITF Notifications Generator

**MITF Notifications** is a comprehensive push notification system that enables sending, managing, and tracking notifications to users across multiple channels. Built on Firebase Cloud Messaging (FCM), the system supports individual messaging, bulk sending via CSV, surveys, reviews, and user management.

---

## Overview

The Notification Generator system consists of several integrated components:

| Component | Description |
|-----------|-------------|
| **Structure Management** | Manages banks, applications, topics (FCM topics), and buttons |
| **Notifications** | Create, update, clone, and manage notification versions |
| **Sender** | Send individual and bulk notifications via FCM |
| **Survey** | Create and manage customer surveys |
| **Review** | Review and approve notification templates and surveys |
| **Operations** | View and manage bulk send operations |
| **Images** | Store and manage notification images (PNG/JPEG) |
| **Lists** | Manage branches, areas, and classifications |
| **User Management** | Handle user authentication, MFA, and device registration |

---

## Where to go next

| If you are... | Start here |
|---------------|------------|
| Understanding the system | [Procedures Overview](procedures/index.md) |
| Integrating via API | [API Reference](api/index.md) |
| Database schema | [Database Reference](database/index.md) |
| Configuration settings | [Configuration Reference](configuration/index.md) |

---

## System Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    Notification Generator                         │
├─────────────────────────────────────────────────────────────────┤
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐            │
│  │  Structure   │  │ Notifications │  │   Sender     │            │
│  │  Management  │  │              │  │              │            │
│  └──────────────┘  └──────────────┘  └──────────────┘            │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐            │
│  │   Survey     │  │   Review     │  │  Operations  │            │
│  │              │  │              │  │              │            │
│  └──────────────┘  └──────────────┘  └──────────────┘            │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐            │
│  │   Images     │  │    Lists     │  │     User     │            │
│  │              │  │              │  │   Management │            │
│  └──────────────┘  └──────────────┘  └──────────────┘            │
├─────────────────────────────────────────────────────────────────┤
│                      Firebase Cloud Messaging                     │
└─────────────────────────────────────────────────────────────────┘
```

---

## Quick Links

- [StructureManagement API](api/structure-management.md)
- [Notifications API](api/notifications.md)
- [Sender API](api/sender.md)
- [BulkSend API](api/bulk-send.md)
- [Survey API](api/survey.md)
- [Review API](api/review.md)
- [UserManagement API](api/user-management.md)
