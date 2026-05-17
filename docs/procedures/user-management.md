# User Management

The User Management component handles authentication, authorization, and device registration.

## Overview

Manage user accounts, authentication, and FCM device tokens for the notification system.

## Features

### Authentication

| Feature | Description |
|---------|-------------|
| **Sign In** | Authenticate users with credentials |
| **JWT Tokens** | Issue and validate JWT tokens |
| **Refresh Tokens** | Handle token renewal |
| **MFA** | Multi-factor authentication setup |

### User Operations

| Feature | Description |
|---------|-------------|
| **Add User** | Create new user accounts |
| **Activate/Deactivate** | Enable or disable user access |
| **MFA Setup** | Configure multi-factor authentication |
| **Password Management** | Handle password changes and resets |

### Device Management

| Feature | Description |
|---------|-------------|
| **Token Registration** | Store FCM device tokens |
| **Token Updates** | Update tokens when they change |
| **Multiple Devices** | Support multiple devices per user |
| **Token Cleanup** | Remove invalid tokens |

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/UserManagement/SignIn` | POST | User authentication |
| `/api/UserManagement/AddUser` | POST | Create new user |
| `/api/UserManagement/ChangeUserActivation` | POST | Activate/deactivate user |
| `/api/UserManagement/StartMfaSetup` | POST | Initiate MFA setup |

## Security

User management includes:
- JWT token-based authentication
- Refresh token support
- MFA issuer configuration
- Secure password handling
