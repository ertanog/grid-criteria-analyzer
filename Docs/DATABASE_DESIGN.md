# Database Design Document

## SQL Server Database Schema

### Tables

#### Users
- **UserID** (int, primary key, identity)
- **Username** (nvarchar(50), unique, not null)
- **PasswordHash** (nvarchar(255), not null)
- **Email** (nvarchar(255), unique)
- **CreatedAt** (datetime, default: GETDATE())

#### Projects
- **ProjectID** (int, primary key, identity)
- **ProjectName** (nvarchar(100), not null)
- **Description** (nvarchar(255))
- **CreatedAt** (datetime, default: GETDATE())
- **UserID** (int, foreign key references Users(UserID))

#### Criteria
- **CriteriaID** (int, primary key, identity)
- **CriteriaName** (nvarchar(100), not null)
- **Weight** (decimal(5,2), not null)
- **ProjectID** (int, foreign key references Projects(ProjectID))

#### Evaluations
- **EvaluationID** (int, primary key, identity)
- **ProjectID** (int, foreign key references Projects(ProjectID))
- **UserID** (int, foreign key references Users(UserID))
- **Score** (decimal(5,2), not null)
- **CreatedAt** (datetime, default: GETDATE())

### Relationships
- Each user can have multiple projects.
- Each project can have multiple criteria.
- Each evaluation is associated with one project and one user.

## Conclusion
This document outlines the database design for the SQL Server used in the Grid Criteria Analyzer. It includes the schema, tables, and relationships necessary to support user projects and evaluations of criteria.