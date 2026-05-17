# Lists

The Lists component manages reference data including branches, areas, and classifications.

## Overview

Maintain organizational hierarchy and categorization data used throughout the notification system.

## Components

### Branches

Geographic or organizational branches:
- Branch identification
- Branch metadata
- Hierarchy support

### Areas

Geographic or functional areas:
- Area definitions
- Area-branch associations
- Coverage mapping

### Classifications

Categorization types for notifications:
- Classification codes
- Description and metadata
- Active/inactive status

## Data Structure

| List Type | Key Fields |
|-----------|------------|
| Branches | ID, Name, Code, ParentBranch |
| Areas | ID, Name, Code, Coverage |
| Classifications | ID, Code, Description, Category |

## Usage

Lists are used for:
- Targeting notifications to specific regions
- Categorizing notification types
- Organizing branches and coverage areas
