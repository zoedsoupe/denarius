# Denarius - Personal Finance Management System
> Self-hosted personal finance management built with Elixir and Phoenix LiveView

## Overview

Denarius is a mobile-first application designed for managing personal and business finances with emphasis on clarity, customization, and multi-account management. Built using Phoenix LiveView, it provides real-time updates and a responsive interface optimized for both mobile and desktop use.

## Core Features

### Account Management
- Multi-account support (personal, business)
- Account-specific settings
- Role-based access for shared accounts

### Income Management
- Regular and variable income tracking
- Flexible recurrence settings
- Source categorization and documentation

### Expense Management
- Comprehensive expense registration
- Custom tagging system
- Markdown notes support
- Payment status tracking

### Financial Overview
- Real-time balance calculations
- Visual financial health indicators
- Period-based viewing options

## Technical Stack

- Backend: Elixir/Phoenix LiveView
- Database: PostgreSQL
- Authentication: Guardian
- Frontend: TailwindCSS, HeroIcons
- Real-time: Phoenix PubSub

## Database Schema

### Accounts Table

| Column | Type | Constraints |
|--------|------|-------------|
| id | bigserial | primary key |
| name | varchar(255) | not null |
| type | account_type | not null |
| inserted_at | timestamp | not null |
| updated_at | timestamp | not null |

### Incomes Table

| Column | Type | Constraints |
|--------|------|-------------|
| id | bigserial | primary key |
| account_id | bigint | foreign key |
| name | varchar(255) | not null |
| amount | decimal(10,2) | not null |
| frequency | income_frequency | not null |
| recurrence | jsonb | null |
| tags | varchar[] | null |
| inserted_at | timestamp | not null |
| updated_at | timestamp | not null |

### Expenses Table

| Column | Type | Constraints |
|--------|------|-------------|
| id | bigserial | primary key |
| account_id | bigint | foreign key |
| name | varchar(255) | not null |
| amount | decimal(10,2) | not null |
| category | varchar(255) | not null |
| emoji | varchar(32) | null |
| tags | varchar[] | null |
| notes | text | null |
| due_date | date | not null |
| paid_at | timestamp | null |
| inserted_at | timestamp | not null |
| updated_at | timestamp | not null |

### Custom Types

```sql
CREATE TYPE account_type AS ENUM ('personal', 'business');
CREATE TYPE income_frequency AS ENUM ('fixed', 'variable', 'temporary');
```

## Development Roadmap

### Phase 1 - Foundation (v0.1.0)
- Basic account management
- Simple income and expense tracking
- Core financial calculations
- Mobile-first responsive design
- Dark mode implementation

### Phase 2 - Enhancement (v0.2.0)
- Recurring transactions
- Custom tags system
- Basic search and filtering
- Data export/import (CSV)
- Basic insights dashboard

### Phase 3 - Optimization (v0.3.0)
- Advanced filtering options
- Transaction categorization
- Improved financial insights
- Basic budget tracking
- Performance optimizations

### Phase 4 - Advanced Features (v0.4.0)
- Bill payment reminders
- Expense sharing calculations
- Charts and analytics
- API for external integrations
- Advanced budget planning

## Color Palette

- Primary Purple: #9655FF
- Accent Yellow: #FEF5BC
- Light Gray: #F7F7FF
- Dark Mode: #000A0F

## Getting Started

The application requires:
- Elixir 1.14+
- Phoenix 1.7+
- PostgreSQL 13+
- Node.js 16+

Installation and setup instructions will be provided in the README.md.

## Contributing

Guidelines for contributing will be established after the initial MVP release. The project follows standard Elixir community coding conventions and git workflow practices.
