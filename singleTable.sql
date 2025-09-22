-- Insert into alert (removed double quotes and fixed syntax)
INSERT INTO alert (alertId, postId, localPoliceStationId, postPoliceStationId, isRead, priority, reportId) 
VALUES 
(1, 2, 'PS00014', 'PS00012', 0, 1, 1),
(2, 1, 'PS00014', 'PS00012', 0, 2, 2),
(3, 1, 'PS00011', 'PS00012', 0, 2, 3);

-- Insert into regionPost (renamed from countryPost to match your schema)
INSERT INTO regionPost (postId, regionId) 
VALUES 
(1, 1),
(2, 1);

-- Insert into criminal (removed double quotes and fixed enum values to proper case)
INSERT INTO criminal (criminalId, photo, firstName, middleName, lastName, faceColor, hairColor, height, bodyType, age, gender, fileNumber, policeStationId) 
VALUES 
(1, 'photo-1748376308849.jpg', 'Alemayew', 'Tekeste', 'kebede', 'dark', 'other', '165-170cm', 'average', 47, 'Male', 'FN-00005', 'PS00011'),
(2, 'photo-1748378427705.jpg', 'Kebede', 'Tekeste', 'kebede', 'dark', 'black', '>185cm', 'slim', 54, 'Male', 'FN-00009', 'PS00013'),
(3, 'photo-1748535354620.jpg', 'Ababe', 'Tekeste', 'kebede', 'dark', 'black', '165-170cm', 'average', 67, 'Male', 'FN-00034', 'PS00014'),
(4, 'photo-1748548981980.jpg', 'Daniel', 'Nega', 'Habite', 'dark', 'black', '170-175cm', 'heavy', 23, 'Male', 'FN-00005', 'PS00014');

-- Insert into message (removed double quotes)
INSERT INTO message (messageId, sendersId, reciversId, message, sentAt, isRead) 
VALUES 
(1, 'PS00011', 'PS00006', 'hello from DebreBirhan Main Police Station', '2025-05-27 20:06:14', 1),
(2, 'PS00011', 'PS00007', 'hello from DebreBirhan Main Police Station', '2025-05-27 20:06:24', 0),
(3, 'PS00011', 'PS00008', 'hello from DebreBirhan Main Police Station', '2025-05-27 20:06:29', 0),
(4, 'PS00011', 'PS00009', 'hello from DebreBirhan Main Police Station', '2025-05-27 20:06:33', 1),
(5, 'PS00011', 'PS00010', 'hello from DebreBirhan Main Police Station', '2025-05-27 20:06:38', 0),
(6, 'PS00011', 'PS00012', 'hello from DebreBirhan Main Police Station to Tulefa Police Station', '2025-05-27 20:06:59', 1),
(7, 'PS00012', 'PS00011', 'hello from Tulefa Police Station To DebreBirhan Main Police Station', '2025-05-27 20:12:56', 1),
(8, 'PS00011', 'PS00013', 'Hello From DebreBirhan Zone Police Station', '2025-05-27 20:35:00', 1),
(9, 'PS00012', 'PS00011', 'hello', '2025-05-29 11:34:44', 1),
(10, 'PS00013', 'PS00011', 'hello from Amhara region poice ststion', '2025-05-29 11:36:02', 1),
(11, 'PS00006', 'PS00013', 'hello to Amhara Regional Police Station ', '2025-05-29 16:39:14', 1),
(12, 'PS00006', 'PS00013', 'am from Debreberhan', '2025-05-29 16:39:33', 1),
(13, 'PS00006', 'PS00013', 'በ Tebase አካባቢ የተፈጸመ ወንጀል "ማጭበርበር/ቤት ልጥፍ" በተመለከተ አዲስ መረጃ ደርሶኛል።', '2025-05-29 16:42:12', 1),
(14, 'PS00013', 'PS00011', 'hello from APF', '2025-05-29 16:46:52', 1),
(15, 'PS00013', 'PS00011', 'HELLO APC', '2025-05-29 16:46:59', 1),
(16, 'PS00013', 'PS00006', 'hello', '2025-05-29 16:47:13', 1),
(17, 'PS00013', 'PS00006', 'hi', '2025-05-29 16:47:23', 1),
(18, 'PS00013', 'PS00006', 'hi', '2025-05-29 16:47:25', 1),
(19, 'PS00014', 'PS00013', 'hello from 05 police station', '2025-05-29 18:47:43', 0),
(20, 'PS00014', 'PS00012', 'hi from police station 05', '2025-05-29 18:48:06', 1),
(21, 'PS00014', 'PS00012', 'alemitu yet alech', '2025-05-29 19:09:26', 1),
(22, 'PS00014', 'PS00010', 'dghffhghdsf', '2025-05-29 19:59:09', 0),
(23, 'PS00012', 'PS00014', 'i think you found danel', '2025-05-30 08:17:38', 1);

-- Insert into policeOfficer (removed double quotes, fixed enum values to proper case, and fixed column name)
INSERT INTO policeOfficer (policeOfficerId, policeOfficerFname, policeOfficerMname, policeOfficerLname, policeOfficerRoleName, policeOfficerStatus, policeOfficerPhoneNumber, policeOfficerGender, policeOfficerBirthdate, passwordText, role, policeStationId, profilePicture) 
VALUES 
('PO00018', 'Alemayew', 'Kebede', 'aleka', 'Federal Investigators', 0, '0987562278', 'Male', '2022-01-01', '$2b$10$J8LlXS7Oxhta4vqe0AEOReZ7BRiMrCEk0VKE1Vj1pqZBkrEPfvD7u', 3, 'PS00006', 'profilePicture-1748208316054.jpg'),
('PO00019', 'Biniyam', 'Girma', 'Alemu', 'Police chief', 0, '096767676', 'Male', '2003-01-01', '$2b$10$YyCGqdoUzIBjf06LSSShvuL6i3dny37u5/SiSLUaxV.k6.VESNAMK', 2, 'PS00011', 'profilePicture-1748375468337.JPG'),
('PO00020', 'Alemayew', 'Kebede', 'Alemu', 'State Troopers', 0, '0914456789', 'Male', '2004-01-01', '$2b$10$UlL2nSYL4E0.cIRyCCNGYeFtJDJwEMTveom7SwSzZvrkufmPF3EDK', 1, 'PS00012', 'profilePicture-1748376513518.jpg'),
('PO00021', 'Biniyam', 'Admin', 'Regional', 'Special Jurisdiction', 0, '09787887878', 'Male', '2004-01-01', '$2b$10$hKP6qxgaZfp4XojQ7kal5e3kqujWZf7Cc/EANmiNOOtr4m2TAeb6y', 3, 'PS00013', 'profilePicture-1748378037702.jpg'),
('PO00022', 'Hanna', 'Gezahegn', 'Asres', 'Captain', 0, '0967898767', 'Female', '2002-01-01', '$2b$10$GBzMIZiExGwi07wODV/LnO1CwswroNrdCR72nOfxBeZiE3/Vn8A..', 2, 'PS00014', 'profilePicture-1748555159735.png'),
('PO00023', 'Hanna', 'Gezahegn', 'Asres', 'Captain', 0, '0914456789', 'Female', '2002-01-01', '$2b$10$.aLdRYBdUKZlXXtUv/y3P.VLaADqcptvxOf/n6KawrL9aeoSBrnPm', 1, 'PS00015', 'profilePicture-1748555741364.jpg'),
('PO00024', 'alemayew', 'Girma', 'girma', 'Detectives', 0, '0911123456', 'Male', '2025-01-01', '$2b$10$/Orm/VJtQJ0r.g9b8/1efuKjmmQjsBCJmxcSz/fGVtiTE1f/PKrLO', 1, 'PS00014', 'profilePicture-1748555919445.jpg');

-- Insert into policeStation (removed double quotes)
INSERT INTO policeStation (policeStationId, nameOfPoliceStation, policeStationPhoneNumber, secPoliceStationPhoneNumber, policeStationLogo, townId, subCityId, rootId) 
VALUES 
('PS00002', 'test Minilik Kifle Ketema police station test test', '092822222', '093424234', 'rgrgrgrgrgrgrgrgtest', 12, 1, 1),
('PS00006', 'Debre Sina', '01115114343', '0111343567', 'logoFile-1748176977207.jpg', 232, 1, 1),
('PS00007', 'Menze Police Station', '01115118282', '0111343567', 'logoFile-1748374664621.png', 210, 1, 1),
('PS00008', 'Debre Birhan 04 Police Station', '01115118282', '01115118223', 'logoFile-1748374717821.png', 225, 1, 1),
('PS00009', 'Debre Birhan Tebase SubCity Police Station', '09282828282', '01115118223', 'logoFile-1748374835073.jpg', 225, 1, 1),
('PS00010', 'Debre Birhan 05 Police Station', '09282828282', '0111343567', 'logoFile-1748374916417.jpg', 225, 1, 1),
('PS00011', 'Debre Birhan Main Police Station', '0978787878', '0968542323', 'logoFile-1748374999253.jpg', 225, 1, 1),
('PS00012', 'Tulefa Police Station', '01115114343', '0111343567', 'logoFile-1748375099454.jpg', 229, 1, 1),
('PS00013', 'Amhara Regional Police Station', '0115116868', '0115116868', 'logoFile-1748377888755.jpg', 274, 1, 1),
('PS00014', 'Debre Birhan 05 Police Station', '01115118282', '0968542323', 'logoFile-1748535246935.jpg', 225, 1, 1),
('PS00015', 'Ensaro Police Station', '01115118282', '0987654321', 'logoFile-1748550782229.jpg', 208, 1, 1);

-- Insert into post (removed double quotes and fixed enum values to proper case)
INSERT INTO post (postId, townId, subCityId, postDescription, firstName, middleName, lastName, age, lastLocation, gender, policeOfficerId, policeStationId, postStatus, personStatus, imagePath, created_at) 
VALUES 
(1, 229, 1, 'missed person', 'Hanna', 'Gezahegn', 'asres', '25.0', 'Debre Birhan/010 kebele', 'Female', 'PO00020', 'PS00012', 1, 'Missing', '1748552787499-Firefly_a_dark_skin_color_kid_having_a_school_bag_and_holding_a_chess_board_in_is_hand_make_the_boya_(1).jpg', '2025-05-29 21:06:27'),
(2, 229, 1, 'if you find this person, report to the police', 'Daniel', 'Nega', 'Habite', '23.0', 'debre sina', 'Male', 'PO00020', 'PS00012', 1, 'Criminal', '1748552942285-images_(3).jpg', '2025-05-29 21:09:02'),
(3, 225, 1, 'test post', 'Biniyam', 'Girma', 'Alemu', '12', 'Addis Ababa', 'Male', 'PO00024', 'PS00014', 1, 'Missing', '1748578807423-images_(3).jpg', '2025-05-30 04:20:07');