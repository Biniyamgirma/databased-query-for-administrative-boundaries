CREATE TABLE IF NOT EXISTS region (
    regionId INT PRIMARY KEY AUTO_INCREMENT,
    regionName VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS root (
    rootId INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    role INT NOT NULL,
    passwordText TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS zone (
    zoneId INT PRIMARY KEY AUTO_INCREMENT,
    zoneName VARCHAR(255) NOT NULL,
    regionId INT NOT NULL,
    FOREIGN KEY (regionId) REFERENCES region(regionId)
);

CREATE TABLE IF NOT EXISTS town (
    townId INT PRIMARY KEY AUTO_INCREMENT,
    zoneId INT NOT NULL,
    regionId INT NOT NULL,
    townName VARCHAR(255) NOT NULL,
    zoneName VARCHAR(255) NOT NULL,
    regionName VARCHAR(255) NOT NULL,
    FOREIGN KEY (zoneId) REFERENCES zone(zoneId),
    FOREIGN KEY (regionId) REFERENCES region(regionId)
);

CREATE TABLE IF NOT EXISTS subCity (
    subCityId INT PRIMARY KEY AUTO_INCREMENT,
    subCityName VARCHAR(255) NOT NULL,
    townId INT,
    FOREIGN KEY (townId) REFERENCES town(townId)
);

CREATE TABLE IF NOT EXISTS policeStation (
    policeStationId VARCHAR(255) PRIMARY KEY,
    nameOfPoliceStation VARCHAR(255) NOT NULL,
    policeStationPhoneNumber VARCHAR(255) NOT NULL,
    secPoliceStationPhoneNumber VARCHAR(255) NOT NULL,
    policeStationLogo TEXT NOT NULL,
    townId INT NOT NULL,
    subCityId INT,
    rootId INT NOT NULL,
    FOREIGN KEY (townId) REFERENCES town(townId),
    FOREIGN KEY (subCityId) REFERENCES subCity(subCityId),
    FOREIGN KEY (rootId) REFERENCES root(rootId)
);

CREATE TABLE IF NOT EXISTS policeOfficer (
    policeOfficerId VARCHAR(255) PRIMARY KEY,
    policeOfficerFname VARCHAR(255) NOT NULL,
    policeOfficerMname VARCHAR(255) NOT NULL,
    policeOfficerLname VARCHAR(255) NOT NULL,
    policeOfficerRoleName VARCHAR(255) NOT NULL,
    policeOfficerStatus INT NOT NULL,
    policeOfficerPhoneNumber VARCHAR(255) NOT NULL,
    policeOfficerGender ENUM('Male', 'Female', 'Other') NOT NULL,
    policeOfficerBirthdate DATE NOT NULL,
    passwordText TEXT NOT NULL,
    role INT NOT NULL,
    profilePicture TEXT,
    policeStationId VARCHAR(255) NOT NULL,
    FOREIGN KEY (policeStationId) REFERENCES policeStation(policeStationId)
);

CREATE TABLE IF NOT EXISTS post (
    postId INT PRIMARY KEY AUTO_INCREMENT,
    townId INT NOT NULL,
    subCityId INT,
    postDescription TEXT,
    firstName VARCHAR(255) NOT NULL,
    middleName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    age VARCHAR(255) NOT NULL,
    lastLocation TEXT,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    policeOfficerId VARCHAR(255) NOT NULL,
    policeStationId VARCHAR(255) NOT NULL,
    postStatus INT NOT NULL,
    personStatus VARCHAR(255) NOT NULL,
    imagePath TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (townId) REFERENCES town(townId),
    FOREIGN KEY (subCityId) REFERENCES subCity(subCityId),
    FOREIGN KEY (policeOfficerId) REFERENCES policeOfficer(policeOfficerId),
    FOREIGN KEY (policeStationId) REFERENCES policeStation(policeStationId)
);

CREATE TABLE IF NOT EXISTS zonePost (
    postId INT,
    zoneId INT,
    PRIMARY KEY (postId, zoneId),
    FOREIGN KEY (postId) REFERENCES post(postId),
    FOREIGN KEY (zoneId) REFERENCES zone(zoneId)
);

CREATE TABLE IF NOT EXISTS regionPost (
    postId INT NOT NULL,
    regionId INT NOT NULL,
    PRIMARY KEY (postId, regionId),
    FOREIGN KEY (postId) REFERENCES post(postId),
    FOREIGN KEY (regionId) REFERENCES region(regionId)
);

CREATE TABLE IF NOT EXISTS normalUser (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(255) NOT NULL,
    townId INT NOT NULL,
    subCityId INT,
    passwordText TEXT NOT NULL,
    role INT NOT NULL,
    userStatus INT NOT NULL,
    FOREIGN KEY (townId) REFERENCES town(townId),
    FOREIGN KEY (subCityId) REFERENCES subCity(subCityId)
);

CREATE TABLE IF NOT EXISTS report (
    reportId INT PRIMARY KEY AUTO_INCREMENT,
    postId INT NOT NULL,
    townId INT NOT NULL,
    subCityId INT,
    reportDescription TEXT,
    userId INT,
    policeStationId VARCHAR(255),
    FOREIGN KEY (postId) REFERENCES post(postId),
    FOREIGN KEY (townId) REFERENCES town(townId),
    FOREIGN KEY (subCityId) REFERENCES subCity(subCityId),
    FOREIGN KEY (policeStationId) REFERENCES policeStation(policeStationId)
);

CREATE TABLE IF NOT EXISTS family (
    userId INT,
    postId INT,
    PRIMARY KEY (userId, postId),
    FOREIGN KEY (userId) REFERENCES normalUser(userId),
    FOREIGN KEY (postId) REFERENCES post(postId)
);

CREATE TABLE IF NOT EXISTS criminal (
    criminalId INT PRIMARY KEY AUTO_INCREMENT,
    photo TEXT,
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    faceColor VARCHAR(255),
    hairColor VARCHAR(255),
    height VARCHAR(255),
    bodyType VARCHAR(255),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    fileNumber VARCHAR(255),
    policeStationId VARCHAR(255),
    FOREIGN KEY (policeStationId) REFERENCES policeStation(policeStationId)
);

CREATE TABLE IF NOT EXISTS message (
    messageId INT PRIMARY KEY AUTO_INCREMENT,
    sendersId VARCHAR(255),
    reciversId VARCHAR(255),
    message TEXT,
    sentAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    isRead TINYINT DEFAULT 0,
    FOREIGN KEY (sendersId) REFERENCES policeStation(policeStationId),
    FOREIGN KEY (reciversId) REFERENCES policeStation(policeStationId)
);

CREATE TABLE IF NOT EXISTS alert (
    alertId INT PRIMARY KEY AUTO_INCREMENT,
    postId INT,
    localPoliceStationId VARCHAR(255),
    postPoliceStationId VARCHAR(255),
    isRead TINYINT,
    priority INT,
    reportId INT,
    FOREIGN KEY (postId) REFERENCES post(postId),
    FOREIGN KEY (localPoliceStationId) REFERENCES policeStation(policeStationId),
    FOREIGN KEY (postPoliceStationId) REFERENCES policeStation(policeStationId),
    FOREIGN KEY (reportId) REFERENCES report(reportId)
);

CREATE TABLE IF NOT EXISTS role (
    roleId INT PRIMARY KEY AUTO_INCREMENT,
    roleName VARCHAR(255) DEFAULT 'Town Officer'
);