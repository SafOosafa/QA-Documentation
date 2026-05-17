# Review

The Review component handles approval workflows for notification templates and surveys.

## Overview

Ensure content quality and compliance through structured review and approval processes.

## Features

### Template Review

Review notification templates before deployment:
- Content validation
- Compliance checking
- Approval/rejection workflow
- Revision requests

### Survey Review

Review surveys before activation:
- Question validation
- Logic verification
- Compliance review
- Approval status tracking

## Review Workflow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Draft     │────▶│  Submitted  │────▶│   Review    │
└─────────────┘     └─────────────┘     └─────────────┘
                                           │       │
                                    ┌──────┘       └──────┐
                                    ▼                     ▼
                             ┌─────────────┐     ┌─────────────┐
                             │  Approved   │     │  Rejected   │
                             └─────────────┘     └─────────────┘
```

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/Review/ReviewTemplate` | POST | Submit template for review |
| `/api/Review/ReviewSurvey` | POST | Submit survey for review |

## Review Actions

| Action | Description |
|--------|-------------|
| Approve | Accept the template/survey for use |
| Reject | Return with revision comments |
| Request Changes | Request specific modifications |
