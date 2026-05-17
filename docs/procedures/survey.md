# Survey

The Survey component enables creating and managing customer feedback surveys.

## Overview

Surveys allow collecting customer feedback through structured questionnaires delivered via push notifications.

## Features

### Survey Creation

Create surveys with:
- Multiple questions
- Various question types
- Conditional logic
- Target audience selection

### Survey Management

| Feature | Description |
|---------|-------------|
| **Add Survey** | Create a new survey template |
| **Get Surveys** | Retrieve surveys with filtering |
| **Active Period** | Set start and end dates for survey availability |
| **Response Tracking** | Track survey completion rates |

## Survey Structure

| Field | Description |
|-------|-------------|
| Title | Survey title |
| Questions | Array of question objects |
| Target | Target audience criteria |
| StartDate | Survey availability start |
| EndDate | Survey availability end |

## Related APIs

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/Survey/AddSurvey` | POST | Create a new survey |
| `/api/Survey/GetSurveys` | GET | Retrieve surveys with filtering |
