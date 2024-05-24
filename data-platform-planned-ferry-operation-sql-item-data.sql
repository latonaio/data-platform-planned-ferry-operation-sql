CREATE TABLE `data_platform_planned_ferry_operation_item_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `FerryOperationVersion`        int(4) NOT NULL,
  `WeekdayType`                  varchar(6) NOT NULL,
  `PlannedFerryOperationID`      int(4) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `FerryLinePortID`              int(4) NOT NULL,
  `StopPort`                     int(16) NOT NULL,
  `PlannedArrivalTime`           time NOT NULL,
  `PlannedDepartureTime`         time NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `OperationRemarks`             varchar(100) DEFAULT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FerryLine`, `FerryOperationVersion`, `WeekdayType`, `PlannedFerryOperationID`, `ExpressType`, `FerryLinePortID`),

    CONSTRAINT `DPFMPlannedFerryOperationItemData_fk` FOREIGN KEY (`FerryLine`, `FerryOperationVersion`, `WeekdayType`, `PlannedFerryOperationID`, `ExpressType`) REFERENCES `data_platform_planned_ferry_operation_header_data` (`FerryLine`, `FerryOperationVersion`, `WeekdayType`, `PlannedFerryOperationID`, `ExpressType`),
    CONSTRAINT `DPFMPlannedFerryOperationItemDataStopPort_fk` FOREIGN KEY (`FerryLine`, `FerryLinePortID`, `StopPort`) REFERENCES `data_platform_ferry_line_stop_port_data` (`FerryLine`, `FerryLinePortID`, `StopPort`),
    CONSTRAINT `DPFMPlannedFerryOperationItemDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPlannedFerryOperationItemDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
