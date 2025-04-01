CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
    );

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e1827065-9a56-4483-8981-9a0ca53f8285',
       'Isla Garcia',
       'isla.garcia0@example.com',
       '302 Oak St, Capital City',
       '1994-07-09',
       '2023-01-09'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e1827065-9a56-4483-8981-9a0ca53f8285');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '7b686dfe-5d5e-4354-94d3-b57c4cddc6a2',
       'Amelia Martin',
       'amelia.martin1@example.com',
       '623 Redwood St, Springfield',
       '1956-04-22',
       '2024-01-26'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '7b686dfe-5d5e-4354-94d3-b57c4cddc6a2');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '8799590a-6d3e-4b56-8b02-cbdbf238ca06',
       'Elijah Lewis',
       'elijah.lewis2@example.com',
       '431 Birch St, Shelbyville',
       '1964-12-02',
       '2023-08-05'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '8799590a-6d3e-4b56-8b02-cbdbf238ca06');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '22edbe33-5177-49fe-874a-f7f3b71a3d87',
       'Emma Jackson',
       'emma.jackson3@example.com',
       '975 Elm St, Springfield',
       '1999-05-16',
       '2023-11-08'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '22edbe33-5177-49fe-874a-f7f3b71a3d87');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a9919544-401a-4cb3-9aef-5ef57db1e103',
       'Benjamin Martinez',
       'benjamin.martinez4@example.com',
       '374 Spruce St, Springfield',
       '2011-10-23',
       '2021-10-27'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a9919544-401a-4cb3-9aef-5ef57db1e103');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '0e799a87-7564-4cbe-8e8f-c8ad00892e85',
       'Mia Thomas',
       'mia.thomas5@example.com',
       '757 Pine St, Shelbyville',
       '2007-09-25',
       '2021-08-17'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '0e799a87-7564-4cbe-8e8f-c8ad00892e85');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e5aafc9d-d1b0-4d57-b4c2-3676d3ef9c5b',
       'Benjamin White',
       'benjamin.white6@example.com',
       '288 Cedar St, Shelbyville',
       '1980-04-25',
       '2020-02-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e5aafc9d-d1b0-4d57-b4c2-3676d3ef9c5b');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'ff634d87-d6d3-4d05-9bd2-e2b48501ba04',
       'Ava Martin',
       'ava.martin7@example.com',
       '454 Elm St, Springfield',
       '2004-09-13',
       '2021-06-18'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'ff634d87-d6d3-4d05-9bd2-e2b48501ba04');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '6cf5313d-c462-4fff-9b74-686ab12fe066',
       'Lucas Lewis',
       'lucas.lewis8@example.com',
       '517 Willow St, Springfield',
       '2015-01-11',
       '2020-10-08'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '6cf5313d-c462-4fff-9b74-686ab12fe066');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'fe55b3d3-5d90-4b5e-b211-e60de7accb82',
       'Emma Garcia',
       'emma.garcia9@example.com',
       '340 Ash St, Springfield',
       '2000-09-20',
       '2021-01-18'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'fe55b3d3-5d90-4b5e-b211-e60de7accb82');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '04f9335e-a3c5-4891-9bad-f85bf36d1435',
       'Charlotte Lee',
       'charlotte.lee10@example.com',
       '333 Ash St, Shelbyville',
       '1988-03-01',
       '2022-06-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '04f9335e-a3c5-4891-9bad-f85bf36d1435');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '0cac074e-5fd1-411a-bfb3-345ecc44c382',
       'Benjamin Thomas',
       'benjamin.thomas11@example.com',
       '966 Ash St, Shelbyville',
       '1984-07-15',
       '2021-05-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '0cac074e-5fd1-411a-bfb3-345ecc44c382');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '7f7470b6-60d1-40ce-9dca-7a84b3717ec7',
       'Liam Garcia',
       'liam.garcia12@example.com',
       '738 Maple St, Capital City',
       '1963-06-17',
       '2023-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '7f7470b6-60d1-40ce-9dca-7a84b3717ec7');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e485a776-4e24-4739-add0-64dc0bde67b7',
       'Sophia Harris',
       'sophia.harris13@example.com',
       '910 Birch St, Shelbyville',
       '1951-09-17',
       '2023-09-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e485a776-4e24-4739-add0-64dc0bde67b7');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f6e8a74c-4151-4bc8-9e49-d2d922127a56',
       'Oliver Anderson',
       'oliver.anderson14@example.com',
       '419 Ash St, Springfield',
       '1987-03-25',
       '2024-01-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f6e8a74c-4151-4bc8-9e49-d2d922127a56');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c1127ddf-ab64-425f-ab3c-7714d1a4d0ec',
       'Benjamin Lewis',
       'benjamin.lewis15@example.com',
       '415 Spruce St, Shelbyville',
       '1991-12-26',
       '2022-11-28'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c1127ddf-ab64-425f-ab3c-7714d1a4d0ec');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '65e3ce97-6e1f-47f0-ab77-5d7bf92ced29',
       'Charlotte Garcia',
       'charlotte.garcia16@example.com',
       '110 Birch St, Shelbyville',
       '1989-09-13',
       '2022-02-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '65e3ce97-6e1f-47f0-ab77-5d7bf92ced29');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e0834d2a-4611-4e51-9be9-852ca5963e13',
       'Amelia White',
       'amelia.white17@example.com',
       '233 Spruce St, Capital City',
       '1994-09-10',
       '2024-01-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e0834d2a-4611-4e51-9be9-852ca5963e13');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '6353dd41-b442-45ac-acd6-7dc77777aac1',
       'Elijah Garcia',
       'elijah.garcia18@example.com',
       '300 Cedar St, Springfield',
       '1967-03-02',
       '2023-01-27'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '6353dd41-b442-45ac-acd6-7dc77777aac1');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b5eb0448-c24d-46f6-93e7-d92a0e57b0d3',
       'Noah White',
       'noah.white19@example.com',
       '958 Maple St, Springfield',
       '1983-03-28',
       '2023-01-04'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b5eb0448-c24d-46f6-93e7-d92a0e57b0d3');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '99c49bec-9c6c-466e-8b10-c2b6ad2ecdf1',
       'Amelia Thompson',
       'amelia.thompson20@example.com',
       '328 Birch St, Capital City',
       '2015-06-15',
       '2021-11-26'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '99c49bec-9c6c-466e-8b10-c2b6ad2ecdf1');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '7664092c-4857-4ece-b9e0-7cd357836933',
       'Amelia Thompson',
       'amelia.thompson21@example.com',
       '930 Cedar St, Springfield',
       '1970-12-08',
       '2023-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '7664092c-4857-4ece-b9e0-7cd357836933');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '91323914-79d9-4e91-beed-8425cdf1bf30',
       'Elijah Robinson',
       'elijah.robinson22@example.com',
       '794 Cedar St, Springfield',
       '1971-06-25',
       '2020-07-08'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '91323914-79d9-4e91-beed-8425cdf1bf30');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '5ed5d983-5d3e-49cd-a6ef-792a02311c16',
       'Liam Martin',
       'liam.martin23@example.com',
       '637 Elm St, Shelbyville',
       '1952-06-25',
       '2020-12-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '5ed5d983-5d3e-49cd-a6ef-792a02311c16');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '31408ebe-dab5-461d-9736-16852526078c',
       'James Lewis',
       'james.lewis24@example.com',
       '566 Chestnut St, Shelbyville',
       '1968-07-10',
       '2021-12-28'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '31408ebe-dab5-461d-9736-16852526078c');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'd84d8410-ea62-4d40-aa55-16bb29ace63c',
       'James Martin',
       'james.martin25@example.com',
       '532 Willow St, Shelbyville',
       '1975-05-13',
       '2022-03-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'd84d8410-ea62-4d40-aa55-16bb29ace63c');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '63ecafbb-fc42-4e74-ac61-0503df2a3050',
       'Noah Thompson',
       'noah.thompson26@example.com',
       '147 Cedar St, Springfield',
       '2013-07-08',
       '2021-08-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '63ecafbb-fc42-4e74-ac61-0503df2a3050');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '665f5ca2-27c3-4a3a-8e84-a46668407d64',
       'Benjamin Rodriguez',
       'benjamin.rodriguez27@example.com',
       '989 Pine St, Springfield',
       '2002-02-19',
       '2021-07-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '665f5ca2-27c3-4a3a-8e84-a46668407d64');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '316e61d2-b6f0-4711-9126-44f8677861f8',
       'Oliver Garcia',
       'oliver.garcia28@example.com',
       '831 Maple St, Capital City',
       '1976-04-14',
       '2021-11-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '316e61d2-b6f0-4711-9126-44f8677861f8');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '593917ab-6aae-4b05-bfc3-552cdec8556d',
       'Benjamin Clark',
       'benjamin.clark29@example.com',
       '127 Chestnut St, Capital City',
       '1983-01-01',
       '2021-11-08'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '593917ab-6aae-4b05-bfc3-552cdec8556d');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '4d1f3072-0dab-4cfe-a069-81fd34508982',
       'Liam Martin',
       'liam.martin30@example.com',
       '386 Pine St, Springfield',
       '1991-09-29',
       '2020-02-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '4d1f3072-0dab-4cfe-a069-81fd34508982');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '1b8ae2c9-274a-4982-baf2-53b18b9db915',
       'Emma Thomas',
       'emma.thomas31@example.com',
       '171 Cedar St, Shelbyville',
       '1961-11-20',
       '2021-11-04'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '1b8ae2c9-274a-4982-baf2-53b18b9db915');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '2d804125-8ddd-4456-a9c2-76bb6a9ca766',
       'Elijah Lewis',
       'elijah.lewis32@example.com',
       '298 Maple St, Shelbyville',
       '1972-04-11',
       '2021-06-05'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '2d804125-8ddd-4456-a9c2-76bb6a9ca766');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c5f46124-b9e7-4c8d-87ff-1154ee9b109b',
       'Lucas Rodriguez',
       'lucas.rodriguez33@example.com',
       '968 Redwood St, Capital City',
       '1987-02-09',
       '2021-01-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c5f46124-b9e7-4c8d-87ff-1154ee9b109b');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '7cb0eb22-1008-465a-b936-7c619f578e54',
       'William Rodriguez',
       'william.rodriguez34@example.com',
       '107 Birch St, Springfield',
       '1988-08-06',
       '2022-06-28'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '7cb0eb22-1008-465a-b936-7c619f578e54');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f530ec6b-5128-4ee6-b27f-b9397ceb2ca5',
       'James Thomas',
       'james.thomas35@example.com',
       '198 Birch St, Springfield',
       '1978-11-05',
       '2020-08-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f530ec6b-5128-4ee6-b27f-b9397ceb2ca5');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '0170f806-0aa7-4e8a-a355-dfe5e8af7ad0',
       'Benjamin Martin',
       'benjamin.martin36@example.com',
       '834 Redwood St, Shelbyville',
       '2016-05-05',
       '2021-10-08'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '0170f806-0aa7-4e8a-a355-dfe5e8af7ad0');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '9ced9064-eecd-4452-b021-926b8339d968',
       'James Thompson',
       'james.thompson37@example.com',
       '311 Hickory St, Shelbyville',
       '2017-04-19',
       '2022-01-12'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '9ced9064-eecd-4452-b021-926b8339d968');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '11798c75-642e-4b91-a1e0-7df2ed03a2cc',
       'Emma Thomas',
       'emma.thomas38@example.com',
       '336 Oak St, Capital City',
       '1990-11-16',
       '2023-02-02'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '11798c75-642e-4b91-a1e0-7df2ed03a2cc');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '977d4471-da42-4a67-ba0f-4e8e02c5f073',
       'Amelia Lee',
       'amelia.lee39@example.com',
       '564 Hickory St, Capital City',
       '1956-09-07',
       '2020-11-28'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '977d4471-da42-4a67-ba0f-4e8e02c5f073');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '420fd4fd-2cdd-4d1e-96c8-8cee127bbe1e',
       'Oliver Anderson',
       'oliver.anderson40@example.com',
       '872 Birch St, Shelbyville',
       '1983-05-14',
       '2022-11-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '420fd4fd-2cdd-4d1e-96c8-8cee127bbe1e');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '7304449f-e395-4139-9a64-b778e61c9ec6',
       'Sophia Garcia',
       'sophia.garcia41@example.com',
       '143 Cedar St, Shelbyville',
       '1958-02-26',
       '2020-05-28'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '7304449f-e395-4139-9a64-b778e61c9ec6');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '9b5f38d3-6c4c-40bd-ae3d-007eca7c973b',
       'Olivia Robinson',
       'olivia.robinson42@example.com',
       '826 Elm St, Springfield',
       '1987-05-27',
       '2021-10-13'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '9b5f38d3-6c4c-40bd-ae3d-007eca7c973b');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c6eca6ad-5c23-435a-aa71-897fca3b6445',
       'Ava Anderson',
       'ava.anderson43@example.com',
       '950 Birch St, Springfield',
       '1988-01-08',
       '2023-11-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c6eca6ad-5c23-435a-aa71-897fca3b6445');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f91af5b7-630f-4ef3-9148-6148ef841b52',
       'James Thomas',
       'james.thomas44@example.com',
       '545 Elm St, Springfield',
       '1986-10-08',
       '2023-08-13'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f91af5b7-630f-4ef3-9148-6148ef841b52');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '0c5f40cd-4e65-439b-b5c3-b1133cdd8fa9',
       'James Harris',
       'james.harris45@example.com',
       '139 Hickory St, Shelbyville',
       '2011-12-23',
       '2020-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '0c5f40cd-4e65-439b-b5c3-b1133cdd8fa9');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b8f86dbe-5157-401e-9895-c5409743f411',
       'William Jackson',
       'william.jackson46@example.com',
       '431 Hickory St, Shelbyville',
       '2010-03-20',
       '2020-06-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b8f86dbe-5157-401e-9895-c5409743f411');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '34c38eb3-7e06-4ea6-8bbf-493da06baa0c',
       'James Anderson',
       'james.anderson47@example.com',
       '242 Oak St, Springfield',
       '1973-10-10',
       '2022-08-04'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '34c38eb3-7e06-4ea6-8bbf-493da06baa0c');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '0b57ecd4-e1c0-4c6f-9400-cc8131829029',
       'Mia Anderson',
       'mia.anderson48@example.com',
       '472 Chestnut St, Capital City',
       '1999-05-30',
       '2023-02-18'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '0b57ecd4-e1c0-4c6f-9400-cc8131829029');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '895031e8-8601-4306-8640-3c0ae51590aa',
       'Noah Martinez',
       'noah.martinez49@example.com',
       '225 Redwood St, Springfield',
       '2016-03-30',
       '2021-02-24'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '895031e8-8601-4306-8640-3c0ae51590aa');