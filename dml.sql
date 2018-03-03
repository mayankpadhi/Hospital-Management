
INSERT INTO Employee Values (4401, 'Ramesh' , TO_DATE('04/16/1990','MM/DD/YYYY'),TO_DATE('04/16/2007','MM/DD/YYYY'),
25000, 'MBBS');
INSERT INTO Employee Values (4402, 'Suresh' , TO_DATE('04/16/1980','MM/DD/YYYY'),TO_DATE('04/16/2002','MM/DD/YYYY'),
26000, 'MBBS');
INSERT INTO Employee Values (4403, 'Kamlesh' , TO_DATE('04/16/1982','MM/DD/YYYY'),TO_DATE('04/16/2004','MM/DD/YYYY'),
35000, 'MBBS');
INSERT INTO Employee Values (4404, 'Jayesh' , TO_DATE('04/16/1984','MM/DD/YYYY'),TO_DATE('04/16/2005','MM/DD/YYYY'),
245000, 'MBBS');
INSERT INTO Employee Values (4405, 'Deepesh' , TO_DATE('04/16/1989','MM/DD/YYYY'),TO_DATE('04/16/2003','MM/DD/YYYY'),
245000, 'MBBS');
INSERT INTO Employee Values (4406, 'Yogesh' , TO_DATE('04/16/1988','MM/DD/YYYY'),TO_DATE('04/16/2001','MM/DD/YYYY'),
255000, 'MBBS');
INSERT INTO Employee Values (4407, 'Hardik' , TO_DATE('04/16/1981','MM/DD/YYYY'),TO_DATE('04/16/2005','MM/DD/YYYY'),
256000, 'MBBS');
INSERT INTO Employee Values (4408, 'Rameshwar' , TO_DATE('04/16/1984','MM/DD/YYYY'),TO_DATE('04/16/2003','MM/DD/YYYY'),
65000, 'MBBS');
INSERT INTO Employee Values (4409, 'Mayank' , TO_DATE('04/16/1986','MM/DD/YYYY'),TO_DATE('04/16/2005','MM/DD/YYYY'),
15000, 'MBBS');
INSERT INTO Employee Values (4410, 'Anil' , TO_DATE('04/16/1983','MM/DD/YYYY'),TO_DATE('04/16/2005','MM/DD/YYYY'),
215000, 'MBBS');

INSERT INTO Contact Values (4401, '9936278346');
INSERT INTO Contact Values (4402, '7728278346');
INSERT INTO Contact Values (4403, '9936278346');
INSERT INTO Contact Values (4404, '9087264518');
INSERT INTO Contact Values (4405, '9947261831');
INSERT INTO Contact Values (4406, '9837183261');
INSERT INTO Contact Values (4407, '8037282327');
INSERT INTO Contact Values (4408, '8712930182');
INSERT INTO Contact Values (4409, '7618293627');
INSERT INTO Contact Values (4410, '9998373614');

INSERT INTO Doctor_type Values ('DType01', 200);
INSERT INTO Doctor_type Values ('DType02', 200);
INSERT INTO Doctor_type Values ('DType03', 300);
INSERT INTO Doctor_type Values ('DType04', 2000);
INSERT INTO Doctor_type Values ('DType05', 200);
INSERT INTO Doctor_type Values ('DType06', 255);
INSERT INTO Doctor_type Values ('DType07', 250);
INSERT INTO Doctor_type Values ('DType08', 650);
INSERT INTO Doctor_type Values ('DType09', 150);
INSERT INTO Doctor_type Values ('DType10', 215); 

INSERT INTO Ward Values(30, 1001, 500 );
INSERT INTO Ward Values(9,  1002, 700 );
INSERT INTO Ward Values(8,  1003, 800 );
INSERT INTO Ward Values(7,  1004, 500 );
INSERT INTO Ward Values(6,  1005, 600 );
INSERT INTO Ward Values(5,  1006, 900 );


INSERT INTO patient Values ('In', 'Rahul', 1001,'M', TO_DATE('04/14/2015','MM/DD/YYYY') , TO_DATE('05/14/2015','MM/DD/YYYY') , 3001, 20 );
INSERT INTO patient Values ('In', 'Sankit', 1002,'M', TO_DATE('07/14/2016','MM/DD/YYYY') , TO_DATE('07/14/2016','MM/DD/YYYY') , 3002, 24 );
INSERT INTO patient Values ('In', 'Lokesh', 1003,'M', TO_DATE('04/14/2013','MM/DD/YYYY') , TO_DATE('05/14/2013','MM/DD/YYYY') , 3003, 14);
INSERT INTO patient Values ('In', 'Chirag', 1004,'M', TO_DATE('01/14/2017','MM/DD/YYYY') , TO_DATE('01/14/2017','MM/DD/YYYY') , 3004, 18 );
INSERT INTO patient Values ('In', 'Sreeraj', 1005,'M', TO_DATE('12/11/2005','MM/DD/YYYY') , TO_DATE('12/11/2005','MM/DD/YYYY') , 3005, 30 );
INSERT INTO patient Values ('In', 'Ruzvelt', 1006,'M', TO_DATE('04/10/2012','MM/DD/YYYY') , TO_DATE('04/14/2012','MM/DD/YYYY') , 3006, 50);
INSERT INTO patient Values ('In', 'Shubham', 1006,'M', TO_DATE('04/23/1995','MM/DD/YYYY') , TO_DATE('05/24/1995','MM/DD/YYYY') , 3007, 09);
INSERT INTO patient Values ('In', 'Srinivas', 1005,'M', TO_DATE('01/14/2015','MM/DD/YYYY') , TO_DATE('01/14/2015','MM/DD/YYYY') , 3008, 10);
INSERT INTO patient Values ('Out', 'Ramesh', 1004,'M', TO_DATE('01/01/2015','MM/DD/YYYY') , TO_DATE('01/02/2016','MM/DD/YYYY') , 3009, 24);
INSERT INTO patient Values ('Out', 'Udit', 1003,'M', TO_DATE('07/14/2016','MM/DD/YYYY') , TO_DATE('08/14/2016','MM/DD/YYYY') , 3010, 49);
INSERT INTO patient Values ('Out', 'Rita', 1002,'F', TO_DATE('04/15/2013','MM/DD/YYYY') , TO_DATE('04/20/2013','MM/DD/YYYY') , 3011, 48);
INSERT INTO patient Values ('Out', 'Chauhan', 1001,'M', TO_DATE('01/14/2017','MM/DD/YYYY') , TO_DATE('01/14/2017','MM/DD/YYYY') , 3012, 15);
INSERT INTO patient Values ('Out', 'Bobby', 1001,'M', TO_DATE('12/11/2005','MM/DD/YYYY') , TO_DATE('12/14/2005','MM/DD/YYYY') , 3013, 53 );
INSERT INTO patient Values ('In', 'Palak', 1001,'F', TO_DATE('04/10/2012','MM/DD/YYYY') , TO_DATE('05/14/2012','MM/DD/YYYY') , 3014, 54 );
INSERT INTO patient Values ('In', 'Namrata', 1001,'F', TO_DATE('04/23/1995','MM/DD/YYYY') , TO_DATE('05/14/1995','MM/DD/YYYY') , 3015, 65 );
INSERT INTO patient Values ('In', 'Debdutta', 1001,'M', TO_DATE('04/22/2016','MM/DD/YYYY') , TO_DATE('05/23/2016','MM/DD/YYYY') , 3016, 24 );
INSERT INTO patient Values ('In', 'Sapna', 1002,'F', TO_DATE('04/14/2015','MM/DD/YYYY') , TO_DATE('04/14/2015','MM/DD/YYYY') , 3017, 22 );
INSERT INTO patient Values ('In', 'Achintya', 1002,'M', TO_DATE('07/14/2015','MM/DD/YYYY') , TO_DATE('08/14/2015','MM/DD/YYYY') , 3018, 67 );
INSERT INTO patient Values ('In', 'Rahman', 1001,'M', TO_DATE('04/14/2015','MM/DD/YYYY') , TO_DATE('05/1/2015','MM/DD/YYYY') , 3019, 69 );
INSERT INTO patient Values ('In', 'Yesudas', 1001,'M', TO_DATE('012/30/2015','MM/DD/YYYY') , TO_DATE('02/14/2016','MM/DD/YYYY') , 3020, 59 );


INSERT INTO Operations_Advisory Values (TO_DATE('04/16/2015','MM/DD/YYYY'), 3001, 9901, 8901);
INSERT INTO Operations_Advisory Values (TO_DATE('07/14/2016','MM/DD/YYYY'), 3002, 9902, 8902);
INSERT INTO Operations_Advisory Values (TO_DATE('04/19/2013','MM/DD/YYYY'), 3003, 9903, 8903);
INSERT INTO Operations_Advisory Values (TO_DATE('01/14/2017','MM/DD/YYYY'), 3004, 9904, 8904);
INSERT INTO Operations_Advisory Values (TO_DATE('12/11/2005','MM/DD/YYYY'), 3005, 9905, 8905);
INSERT INTO Operations_Advisory Values (TO_DATE('04/23/1995','MM/DD/YYYY'), 3006, 9906, 8906);
INSERT INTO Operations_Advisory Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 3011, 9907, 8907);
INSERT INTO Operations_Advisory Values (TO_DATE('12/14/2015','MM/DD/YYYY'), 3012, 9908, 8908);
INSERT INTO Operations_Advisory Values (TO_DATE('07/14/2015','MM/DD/YYYY'), 3016, 9909, 8909);
INSERT INTO Operations_Advisory Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 3017, 9910, 8910);


INSERT INTO Doctor Values (4401, 8001, 'DType01', 8901);
INSERT INTO Doctor Values (4402, 8002, 'DType02', 8902);
INSERT INTO Doctor Values (4403, 8003, 'DType03', 8903);
INSERT INTO Doctor Values (4404, 8004, 'DType02', 8904);
INSERT INTO Doctor Values (4405, 8005, 'DType05', 8905);
INSERT INTO Doctor Values (4406, 8006, 'DType02', 8906);
INSERT INTO Doctor Values (4407, 8007, 'DType07', 8907);
INSERT INTO Doctor Values (4408, 8008, 'DType08', 8908);
INSERT INTO Doctor Values (4409, 8009, 'DType09', 8909);
INSERT INTO Doctor Values (4410, 8010, 'DType10', 8910);



INSERT INTO Appointment Values (3301, TO_DATE('03/23/2014','MM/DD/YYYY'));
INSERT INTO Appointment Values (3302, TO_DATE('04/14/2014','MM/DD/YYYY'));
INSERT INTO Appointment Values (3303, TO_DATE('05/16/2014','MM/DD/YYYY'));
INSERT INTO Appointment Values (3304, TO_DATE('02/12/2014','MM/DD/YYYY'));
INSERT INTO Appointment Values (3305, TO_DATE('08/16/2014','MM/DD/YYYY'));
INSERT INTO Appointment Values (3306, TO_DATE('12/06/2015','MM/DD/YYYY'));
INSERT INTO Appointment Values (3307, TO_DATE('11/03/2015','MM/DD/YYYY'));
INSERT INTO Appointment Values (3308, TO_DATE('02/12/2015','MM/DD/YYYY'));
INSERT INTO Appointment Values (3309, TO_DATE('18/27/2015','MM/DD/YYYY'));
INSERT INTO Appointment Values (3310, TO_DATE('09/18/2015','MM/DD/YYYY'));


INSERT INTO Appointment_with Values (3301, 8001);
INSERT INTO Appointment_with Values (3302, 8002);
INSERT INTO Appointment_with Values (3303, 8002);
INSERT INTO Appointment_with Values (3304, 8001);
INSERT INTO Appointment_with Values (3305, 8002);
INSERT INTO Appointment_with Values (3306, 8003);
INSERT INTO Appointment_with Values (3307, 8004);
INSERT INTO Appointment_with Values (3308, 8005);
INSERT INTO Appointment_with Values (3309, 8001);
INSERT INTO Appointment_with Values (3310, 8005);


INSERT INTO Treated_by Values (3001, 8001);
INSERT INTO Treated_by Values (3002, 8002);
INSERT INTO Treated_by Values (3003, 8003);
INSERT INTO Treated_by Values (3004, 8004);
INSERT INTO Treated_by Values (3005, 8005);
INSERT INTO Treated_by Values (3006, 8006);
INSERT INTO Treated_by Values (3007, 8007);
INSERT INTO Treated_by Values (3008, 8008);
INSERT INTO Treated_by Values (3009, 8009);
INSERT INTO Treated_by Values (3010, 8010);
INSERT INTO Treated_by Values (3011, 8009);
INSERT INTO Treated_by Values (3012, 8001);
INSERT INTO Treated_by Values (3013, 8004);
INSERT INTO Treated_by Values (3014, 8001);
INSERT INTO Treated_by Values (3015, 8005);
INSERT INTO Treated_by Values (3016, 8001);
INSERT INTO Treated_by Values (3017, 8001);
INSERT INTO Treated_by Values (3018, 8002);
INSERT INTO Treated_by Values (3019, 8007);
INSERT INTO Treated_by Values (3020, 8008);


INSERT INTO Available_Medicine Values (6601, 50, 'med1');
INSERT INTO Available_Medicine Values (6602, 45, 'med2');
INSERT INTO Available_Medicine Values (6603, 44, 'med3');
INSERT INTO Available_Medicine Values (6604, 34, 'med4');
INSERT INTO Available_Medicine Values (6605, 23, 'med5');
INSERT INTO Available_Medicine Values (6606, 56, 'med6');
INSERT INTO Available_Medicine Values (6607, 52, 'med7');
INSERT INTO Available_Medicine Values (6608, 12, 'med8');
INSERT INTO Available_Medicine Values (6609, 4, 'med9');
INSERT INTO Available_Medicine Values (6610, 6, 'med10');


INSERT INTO Available_Test Values (5601, 50, 'test1');
INSERT INTO Available_Test Values (5602, 55, 'test2');
INSERT INTO Available_Test Values (5603, 60, 'test3');
INSERT INTO Available_Test Values (5604, 65, 'test4');
INSERT INTO Available_Test Values (5605, 70, 'test5');
INSERT INTO Available_Test Values (5606, 75, 'test6');
INSERT INTO Available_Test Values (5607, 80, 'test7');
INSERT INTO Available_Test Values (5608, 85, 'test8');
INSERT INTO Available_Test Values (5609, 90, 'test9');
INSERT INTO Available_Test Values (5610, 95, 'test10');


INSERT INTO Available_Operation Values (9901, 50, 'op1');
INSERT INTO Available_Operation Values (9902, 55, 'op2');
INSERT INTO Available_Operation Values (9903, 60, 'op3');
INSERT INTO Available_Operation Values (9904, 65, 'op4');
INSERT INTO Available_Operation Values (9905, 70, 'op5');
INSERT INTO Available_Operation Values (9906, 75, 'op6');
INSERT INTO Available_Operation Values (9907, 80, 'op7');
INSERT INTO Available_Operation Values (9908, 85, 'op8');
INSERT INTO Available_Operation Values (9909, 90, 'op9');
INSERT INTO Available_Operation Values (9910, 95, 'op10');


INSERT INTO Test_Advisory Values (TO_DATE('04/16/2015','MM/DD/YYYY'), 3001, 8001, 5601, 'Report1');
INSERT INTO Test_Advisory Values (TO_DATE('07/14/2016','MM/DD/YYYY'), 3002, 8002, 5601, 'Report2');
INSERT INTO Test_Advisory Values (TO_DATE('04/14/2013','MM/DD/YYYY'), 3001, 8003, 5603, 'Report3');
INSERT INTO Test_Advisory Values (TO_DATE('01/14/2017','MM/DD/YYYY'), 3004, 8004, 5604, 'Report4');
INSERT INTO Test_Advisory Values (TO_DATE('12/11/2005','MM/DD/YYYY'), 3002, 8005, 5605, 'Report5');
INSERT INTO Test_Advisory Values (TO_DATE('04/23/1995','MM/DD/YYYY'), 3006, 8006, 5603, 'Report6');
INSERT INTO Test_Advisory Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 3007, 8007, 5607, 'Report7');
INSERT INTO Test_Advisory Values (TO_DATE('12/14/2015','MM/DD/YYYY'), 3004, 8008, 5608, 'Report8');
INSERT INTO Test_Advisory Values (TO_DATE('07/14/2015','MM/DD/YYYY'), 3009, 8009, 5609, 'Report9');
INSERT INTO Test_Advisory Values (TO_DATE('02/14/2015','MM/DD/YYYY'), 3009, 8010, 5610, 'Report10');


INSERT INTO Medicine_Advisory Values (1, 3001, 8001, 6601, TO_DATE('04/16/2015','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (2, 3002, 8002, 6602, TO_DATE('07/14/2016','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (2, 3003, 8003, 6603, TO_DATE('04/14/2013','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3004, 8004, 6604, TO_DATE('01/14/2017','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (5, 3005, 8005, 6605, TO_DATE('02/16/2017','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (2, 3006, 8006, 6606, TO_DATE('04/23/2016','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (4, 3008, 8007, 6607, TO_DATE('07/12/2015','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3010, 8008, 6608, TO_DATE('01/02/1995','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3011, 8008, 6602, TO_DATE('01/12/2017','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3012, 8006, 6602, TO_DATE('02/19/2016','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3013, 8006, 6601, TO_DATE('08/08/2017','MM/DD/YYYY'));
INSERT INTO Medicine_Advisory Values (3, 3014, 8006, 6601, TO_DATE('06/12/2017','MM/DD/YYYY'));


INSERT INTO Visitor Values (TO_DATE('04/14/2015','MM/DD/YYYY') , TO_DATE('04/14/2015','MM/DD/YYYY') , 'Subhash', 2301 );
INSERT INTO Visitor Values (TO_DATE('07/14/2015','MM/DD/YYYY') , TO_DATE('07/14/2016','MM/DD/YYYY') , 'Prakash', 2302 );
INSERT INTO Visitor Values (TO_DATE('04/14/2013','MM/DD/YYYY') , TO_DATE('04/14/2013','MM/DD/YYYY') , 'Shayam', 2303 );
INSERT INTO Visitor Values (TO_DATE('01/14/2017','MM/DD/YYYY') , TO_DATE('01/14/2017','MM/DD/YYYY') , 'Ram', 2304 );
INSERT INTO Visitor Values (TO_DATE('12/11/2005','MM/DD/YYYY') , TO_DATE('12/11/2005','MM/DD/YYYY') , 'Ganshyam', 2305 );
INSERT INTO Visitor Values (TO_DATE('04/10/2012','MM/DD/YYYY') , TO_DATE('04/14/2012','MM/DD/YYYY') , 'Vidwan', 2306 );
INSERT INTO Visitor Values (TO_DATE('04/23/1995','MM/DD/YYYY') , TO_DATE('04/23/1995','MM/DD/YYYY') , 'Palak', 2307 );
INSERT INTO Visitor Values (TO_DATE('01/14/2015','MM/DD/YYYY') , TO_DATE('01/14/2015','MM/DD/YYYY') , 'Sneha', 2308 );
INSERT INTO Visitor Values (TO_DATE('07/14/2016','MM/DD/YYYY') , TO_DATE('07/14/2016','MM/DD/YYYY') , 'Mayank', 2309 );
INSERT INTO Visitor Values (TO_DATE('04/15/2013','MM/DD/YYYY') , TO_DATE('04/20/2013','MM/DD/YYYY') , 'Yogesh', 2310 );


INSERT into to_meet Values (2301,3001);
INSERT into to_meet Values (2302,3002);
INSERT into to_meet Values (2303,3003);
INSERT into to_meet Values (2301,3017);
INSERT into to_meet Values (2304,3004);
INSERT into to_meet Values (2305,3005);
INSERT into to_meet Values (2306,3006);
INSERT into to_meet Values (2307,3007);
INSERT into to_meet Values (2308,3008);
INSERT into to_meet Values (2309,3009);
INSERT into to_meet Values (2310,3010);


INSERT into Reports Values ('Regular check',TO_DATE('04/18/2015','MM/DD/YYYY'), 8001, 3001, 8901);
INSERT into Reports Values ('Low Diet',TO_DATE('07/16/2016','MM/DD/YYYY'), 8002, 3002, 8902);
INSERT into Reports Values ('Regular check',TO_DATE('04/16/2013','MM/DD/YYYY'), 8003, 3003, 8902);
INSERT into Reports Values ('Routine visit',TO_DATE('01/16/2017','MM/DD/YYYY'), 8004, 3004, 8903);
INSERT into Reports Values ('Routine visit',TO_DATE('12/12/2005','MM/DD/YYYY'), 8005, 3005, 8904);
INSERT into Reports Values ('Regular check',TO_DATE('04/25/1995','MM/DD/YYYY'), 8006, 3006, 8905);
INSERT into Reports Values ('Low Diet',TO_DATE('01/16/2015','MM/DD/YYYY'), 8007, 3007, 8906);
INSERT into Reports Values ('Low Diet',TO_DATE('12/16/2015','MM/DD/YYYY'), 8008, 3008, 8907);
INSERT into Reports Values ('Regular Test',TO_DATE('08/02/2015','MM/DD/YYYY'), 8009, 3009, 8908);
INSERT into Reports Values ('Regular Test',TO_DATE('02/01/2015','MM/DD/YYYY'), 8010, 3010, 8909);


INSERT into Bill Values (21001, TO_DATE('05/14/2015','MM/DD/YYYY'), 15210);
INSERT into Bill Values (21002, TO_DATE('07/14/2016','MM/DD/YYYY'), 765);
INSERT into Bill Values (21003, TO_DATE('01/14/2017','MM/DD/YYYY'), 1017);
INSERT into Bill Values (21004, TO_DATE('04/14/2012','MM/DD/YYYY'), 2475);
INSERT into Bill Values (21005, TO_DATE('05/24/1995','MM/DD/YYYY'), 24880);
INSERT into Bill Values (21006, TO_DATE('01/02/2016','MM/DD/YYYY'), 1185);
INSERT into Bill Values (21007, TO_DATE('05/14/2013','MM/DD/YYYY'), 18148);
INSERT into Bill Values (21008, TO_DATE('12/11/2005','MM/DD/YYYY'), 1085);
INSERT into Bill Values (21009, TO_DATE('04/20/2013','MM/DD/YYYY'), 215);
INSERT into Bill Values (21010, TO_DATE('01/14/2017','MM/DD/YYYY'), 220);
INSERT into Bill Values (21011, TO_DATE('12/14/2005','MM/DD/YYYY'), 150);
INSERT into Bill Values (21012, TO_DATE('05/14/2012','MM/DD/YYYY'), 150);
INSERT into Bill Values (21013, TO_DATE('05/23/2015','MM/DD/YYYY'), 90);
INSERT into Bill Values (21014, TO_DATE('04/14/2015','MM/DD/YYYY'), 95);
INSERT into Bill Values (21015, TO_DATE('05/01/2015','MM/DD/YYYY'), 2500);
INSERT into Bill Values (21016, TO_DATE('02/14/2016','MM/DD/YYYY'), 700);



INSERT into Test_Bill Values (TO_DATE('04/16/2015','MM/DD/YYYY'), 3001, 110, 21001);
INSERT into Test_Bill Values (TO_DATE('07/14/2016','MM/DD/YYYY'), 3002, 120, 21002);
INSERT into Test_Bill Values (TO_DATE('01/14/2017','MM/DD/YYYY'), 3004, 150, 21003);
INSERT into Test_Bill Values (TO_DATE('04/23/1995','MM/DD/YYYY'), 3006, 60, 21004);
INSERT into Test_Bill Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 3007, 80, 21005);
INSERT into Test_Bill Values (TO_DATE('07/14/2015','MM/DD/YYYY'), 3009, 185, 21006);


INSERT into Medicine_Bill Values (TO_DATE('04/16/2015','MM/DD/YYYY'), 3001, 50, 21001);
INSERT into Medicine_Bill Values (TO_DATE('07/14/2016','MM/DD/YYYY'), 3002, 90, 21002);
INSERT into Medicine_Bill Values (TO_DATE('04/14/2013','MM/DD/YYYY'), 3003, 88, 21007);
INSERT into Medicine_Bill Values (TO_DATE('01/14/2017','MM/DD/YYYY'), 3004, 102, 21003);
INSERT into Medicine_Bill Values (TO_DATE('02/16/2017','MM/DD/YYYY'), 3005, 115, 21008);
INSERT into Medicine_Bill Values (TO_DATE('01/12/2017','MM/DD/YYYY'), 3011, 135, 21009);
INSERT into Medicine_Bill Values (TO_DATE('02/19/2016','MM/DD/YYYY'), 3012, 135, 21010);
INSERT into Medicine_Bill Values (TO_DATE('08/08/2017','MM/DD/YYYY'), 3013, 150, 21011);
INSERT into Medicine_Bill Values (TO_DATE('06/12/2017','MM/DD/YYYY'), 3014, 150, 21012);


INSERT into Operation_Bill Values (TO_DATE('04/16/2015','MM/DD/YYYY'), 8901, 3001, 21001);
INSERT into Operation_Bill Values (TO_DATE('07/14/2016','MM/DD/YYYY'), 8902, 3002, 21002);
INSERT into Operation_Bill Values (TO_DATE('04/19/2013','MM/DD/YYYY'), 8903, 3003, 21007);
INSERT into Operation_Bill Values (TO_DATE('01/14/2017','MM/DD/YYYY'), 8904, 3004, 21003);
INSERT into Operation_Bill Values (TO_DATE('12/11/2005','MM/DD/YYYY'), 8905, 3005, 21008);
INSERT into Operation_Bill Values (TO_DATE('04/23/1995','MM/DD/YYYY'), 8906, 3006, 21004);
INSERT into Operation_Bill Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 8907, 3011, 21009);
INSERT into Operation_Bill Values (TO_DATE('12/14/2015','MM/DD/YYYY'), 8908, 3012, 21010);
INSERT into Operation_Bill Values (TO_DATE('07/14/2015','MM/DD/YYYY'), 8909, 3016, 21013);
INSERT into Operation_Bill Values (TO_DATE('01/14/2015','MM/DD/YYYY'), 8910, 3017, 21014);


INSERT into Stay_Charges Values (3001, 15000, 1001, 21001);
INSERT into Stay_Charges Values (3002, 500, 1001, 21002);
INSERT into Stay_Charges Values (3004, 700, 1002, 21003);
INSERT into Stay_Charges Values (3006, 2400, 1003, 21004);
INSERT into Stay_Charges Values (3007, 24800, 1003, 21005);
INSERT into Stay_Charges Values (3009, 1000, 1004, 21006);
INSERT into Stay_Charges Values (3003, 18000, 1005, 21007);
INSERT into Stay_Charges Values (3005, 900, 1006, 21008);
INSERT into Stay_Charges Values (3019, 2500, 1001, 21015);
INSERT into Stay_Charges Values (3020, 700, 1002, 21016);
