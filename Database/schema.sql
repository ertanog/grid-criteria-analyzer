-- SQL Server Database Schema for Criteria Packages and Alerts

CREATE TABLE CriteriaPackages (
    PackageID INT PRIMARY KEY IDENTITY(1,1),  -- Unique identifier for each criteria package
    Name VARCHAR(255) NOT NULL,               -- Name of the criteria package
    Description TEXT,                          -- Description of the criteria package
    CreatedDate DATETIME DEFAULT GETDATE(),   -- Date when the package was created
    UpdatedDate DATETIME DEFAULT GETDATE()     -- Date when the package was last updated
);

CREATE TABLE Alerts (
    AlertID INT PRIMARY KEY IDENTITY(1,1),     -- Unique identifier for each alert
    PackageID INT FOREIGN KEY REFERENCES CriteriaPackages(PackageID),  -- Foreign key referencing CriteriaPackages
    AlertType VARCHAR(100) NOT NULL,           -- Type of alert (e.g., "Email", "SMS")
    Message TEXT NOT NULL,                      -- Message to be sent when the alert is triggered
    TriggerCondition VARCHAR(255) NOT NULL,    -- Condition under which the alert is triggered
    IsActive BIT DEFAULT 1,                    -- Indicates whether the alert is active
    CreatedDate DATETIME DEFAULT GETDATE(),    -- Date when the alert was created
    UpdatedDate DATETIME DEFAULT GETDATE()     -- Date when the alert was last updated
);

CREATE INDEX IX_Alerts_PackageID ON Alerts(PackageID);