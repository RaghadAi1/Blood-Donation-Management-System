create database Blood_Donation ;
use Blood_Donation;
create table patients(
patients_id int primary key,
Full_Name Varchar(50)  ,
Blood_group varchar(5),
Disease varchar(50)
);
create table blood_donors (
donors_id int primary key,
Full_Name Varchar(50),
Blood_group varchar(5),
address varchar(50),
contact_number varchar(50),
patients_id int,
 FOREIGN KEY(patients_id) REFERENCES patients(patients_id)
);
create table blood_Banks (
banks_id int primary key,
Donors_FullName Varchar(100),
contact_number varchar(50),
address varchar(50),
donors_id int,
 FOREIGN KEY(donors_id) REFERENCES blood_donors(donors_id)
);
insert into Blood_Donation.patients values(44332119,"Heath Carlson","+B","anemia");
insert into Blood_Donation.patients values(44998311,"Nash Rivers","-B","kidney disease");
insert into Blood_Donation.patients values(44009322,"Avery Mercado","+A","liver disease");
insert into Blood_Donation.patients values(44770992,"Joel Holland","-A","liver disease");
insert into Blood_Donation.patients values(44662398,"Lucca Rich","+O","anemia");
insert into Blood_Donation.patients values(44222090,"Connor Branch","-O","Accident");
insert into Blood_Donation.patients values(44882090,"Dylan Bell","+AB","kidney disease");
insert into Blood_Donation.patients values(44112090,"Kelly Howe","-AB","Accident");
select *from Blood_Donation.patients;

insert into Blood_Donation.blood_donors values(99332345,"Ben Lin","-AB","242 Greene St, New York, NY 10003, USA",+16468142677,44112090);
insert into Blood_Donation.blood_donors values(99883213,"Cynthia Cano","+AB","47 W 13th St, New York, NY 10011, USA",+16468142651,44882090);
insert into Blood_Donation.blood_donors values(99113489,"Kody Ball","-A","20 Cooper Square, New York, NY 10003, USA",+16469806531,44770992);
insert into Blood_Donation.blood_donors values(99773278,"Ada Coffey","+A","19 Washington Square N, New York, NY 10011, USA",+16468142693,44009322);
insert into Blood_Donation.blood_donors values(99443546,"Nathan Turner","+O","29 Washington Pl, New York, NY 10003, USA",+16468143920,44662398);
insert into Blood_Donation.blood_donors values(99554324,"Jade Curry","-O","25 Union Square W, New York, NY 10003, USA",+16468143887,44222090);
insert into Blood_Donation.blood_donors values(99224987,"Whitney Diaz","-B","55 Clark St, Brooklyn, NY 11201, USA",+16467604023,44998311);
insert into Blood_Donation.blood_donors values(99009821,"Bishop Benson","+B","345 E 24th St, New York, NY 10010, USA",+16468143159,44332119);
select *from Blood_Donation.blood_donors ;

insert into Blood_Donation.blood_Banks values(3221,"Bishop Benson","+16468143159","345 E 24th St, New York, NY 10010, USA",99009821);
insert into Blood_Donation.blood_Banks values(3122,"Ben Lin","+16468142677","242 Greene St, New York, NY 10003, USA",99332345);
insert into Blood_Donation.blood_Banks values(3998,"Whitney Diaz","+16467604023","55 Clark St, Brooklyn, NY 11201, USA",99224987);
insert into Blood_Donation.blood_Banks values(3876,"Cynthia Cano","+16468142651","47 W 13th St, New York, NY 10011, USA",99883213);
insert into Blood_Donation.blood_Banks values(3981,"Jade Curry","+16468143887","25 Union Square W, New York, NY 10003, USA",99554324);
insert into Blood_Donation.blood_Banks values(3019,"Kody Ball","+16469806531","20 Cooper Square, New York, NY 10003, USA",99113489);
insert into Blood_Donation.blood_Banks values(3556,"Nathan Turner","+16468143920","29 Washington Pl, New York, NY 10003, USA",99443546);
insert into Blood_Donation.blood_Banks values(3441,"Ada Coffey","+16468142693","19 Washington Square N, New York, NY 10011, USA",99773278);
select *from Blood_Donation.blood_Banks;

#meaningful queries 
#if you want to count the blood group
select banks_id,(select count(Blood_group) from Blood_Donation.blood_donors) 
as available_bloods
from Blood_Donation.blood_Banks;
 
use Blood_Donation;
SELECT patients.patients_id, blood_donors.donors_id 
FROM patients 
INNER JOIN blood_donors ON patients.patients_id = blood_donors.patients_id;

select donors_id,patients_id,Blood_group from Blood_Donation.blood_donors
where Blood_group like '-%';

select * from blood_Banks 
order by Donors_FullName,donors_id;


