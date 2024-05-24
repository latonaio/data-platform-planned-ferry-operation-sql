CREATE TABLE `data_platform_planned_ferry_operation_header_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `FerryOperationVersion`        int(4) NOT NULL,
  `WeekdayType`                  varchar(6) NOT NULL,
  `PlannedFerryOperationID`      int(4) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DeparturePort`                int(16) NOT NULL,
  `DestinationPort`              int(16) NOT NULL,
  `PlannedDepartureTime`         time NOT NULL,
  `PlannedArrivalTime`           time NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `OperationRemarks`             varchar(100) DEFAULT NULL,
  `OperationCode`                varchar(40) DEFAULT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FerryLine`, `FerryOperationVersion`, `WeekdayType`, `PlannedFerryOperationID`, `ExpressType`),

    CONSTRAINT `DPFMPlannedFerryOperationHeaderData_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMPlannedFerryOperationHeaderDataWeekdayType_fk` FOREIGN KEY (`FerryLine`, `WeekdayType`) REFERENCES `data_platform_ferry_line_weekday_type_data` (`FerryLine`, `WeekdayType`),
    CONSTRAINT `DPFMPlannedFerryOperationHeaderDataExpressType_fk` FOREIGN KEY (`FerryLine`, `ExpressType`) REFERENCES `data_platform_ferry_line_express_type_data` (`FerryLine`, `ExpressType`),
    CONSTRAINT `DPFMPlannedFerryOperationHeaderDataDptDstPort_fk` FOREIGN KEY (`FerryLine`, `ExpressType`, `DeparturePort`, `DestinationPort`) REFERENCES `data_platform_ferry_line_dpt_dst_port_data` (`FerryLine`, `ExpressType`, `DeparturePort`, `DestinationPort`),
    CONSTRAINT `DPFMPlannedFerryOperationHeaderDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPlannedFerryOperationHeaderDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
