# API Specification

## Overview
This document outlines the REST API endpoints for integration between Delphi and Python within the Grid Criteria Analyzer project.

## Endpoints

### 1. Get Grid Data

- **Endpoint:** `/api/grid/data`
- **Method:** `GET`
- **Description:** Retrieves grid data for analysis.
- **Response:** JSON object containing grid data.

### 2. Submit Criteria

- **Endpoint:** `/api/grid/submit`
- **Method:** `POST`
- **Description:** Submits criteria for processing.
- **Request Body:** JSON object containing criteria parameters.
- **Response:** JSON object confirming submission status.

### 3. Analyze Grid

- **Endpoint:** `/api/grid/analyze`
- **Method:** `POST`
- **Description:** Analyzes grid data based on submitted criteria.
- **Request Body:** JSON object with criteria and data reference.
- **Response:** JSON object containing analysis results.

### 4. Get Analysis Results

- **Endpoint:** `/api/grid/results`
- **Method:** `GET`
- **Description:** Retrieves results from previous analyses.
- **Response:** JSON object containing results data.

## Error Handling
- Proper error messages will be returned based on the status codes:
  - `200` - Success
  - `400` - Bad Request
  - `404` - Not Found
  - `500` - Internal Server Error

## Authentication
- Basic authentication is required for all endpoints.

## Example Requests

### Get Grid Data
```bash
curl -X GET http://example.com/api/grid/data -u username:password
```

### Submit Criteria
```bash
curl -X POST http://example.com/api/grid/submit -u username:password -H 'Content-Type: application/json' -d '{"criteria": {"param1": "value1", "param2": "value2"}}'
```

### Analyze Grid
```bash
curl -X POST http://example.com/api/grid/analyze -u username:password -H 'Content-Type: application/json' -d '{"criteria": {"param1": "value1", "param2": "value2"}, "dataRef": "dataId"}'
```

### Get Analysis Results
```bash
curl -X GET http://example.com/api/grid/results -u username:password
```