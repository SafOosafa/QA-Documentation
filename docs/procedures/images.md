# Images

The Images component handles storage and management of notification images.

## Overview

Manage image assets used in notifications including logos, icons, and promotional images.

## Supported Formats

| Format | Type | Notes |
|--------|------|-------|
| PNG | Image | Recommended for logos and icons |
| JPEG | Image | Suitable for photos and banners |

## Features

### Image Management

| Feature | Description |
|---------|-------------|
| **Upload** | Store images in physical storage |
| **Validation** | Ensure proper format and size |
| **URL Generation** | Generate accessible URLs for images |
| **Location Tracking** | Store and retrieve image paths |

## Storage Configuration

Images are stored in the location configured in `PhysicalStorage`:
- `ImageStorageLocation` - Base path for image storage
- `URL` - Base URL for image access

## Related Configuration

```json
"PhysicalStorage": {
    "URL": "https://localhost:7013",
    "ImageStorageLocation": "..."
}
```
