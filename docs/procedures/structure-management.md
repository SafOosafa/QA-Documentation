# Structure Management

Structure Management is responsible for managing the core organizational entities that support the notification system.

## Overview

Structure Management handles:
- **Banks** - Financial institutions using the system
- **Applications** - Mobile apps registered with Firebase Cloud Messaging
- **Topics** - FCM topics for pub/sub messaging
- **Buttons** - Interactive buttons for notifications

## Components

### Banks

Manage bank entities within the system. Each bank can have multiple applications and serve as the top-level organizational unit.

### Applications

Register mobile applications with their Firebase configuration. Each application is linked to a bank and requires:
- Application name
- Firebase project details

### Topics (FCM Topics)

Create and manage Firebase Cloud Messaging topics. Topics allow:
- Subscribe users to specific interest areas
- Send notifications to all subscribers of a topic
- Organize notifications by category

### Buttons

Define interactive buttons that can be included in notifications. Buttons provide:
- Quick action shortcuts
- Navigation within the app
- Custom interaction handlers

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/StructureManagement/AddBank` | POST | Add a new bank |
| `/api/StructureManagement/UpdateBank` | POST | Update bank details |
| `/api/StructureManagement/AddApplication` | POST | Register a new application with Firebase |
| `/api/StructureManagement/AddTopic` | POST | Create a new FCM topic |
| `/api/StructureManagement/SubscribeCustomer` | POST | Subscribe a customer to a topic |
