INSERT INTO APPLICANT (APPLICANTID,APPLICANTFIRST,APPLICANTLAST,APPLICANTPHONE,APPLICANTPASSWORD,APPLICANTBDAY,APPLICANTGENDER,APPLICANTVALID) VALUES ('aa@aa.com','aa','aa','821053339592 ','111','1984-06-18','M','N');
INSERT INTO APPLICANT (APPLICANTID,APPLICANTFIRST,APPLICANTLAST,APPLICANTPHONE,APPLICANTPASSWORD,APPLICANTBDAY,APPLICANTGENDER,APPLICANTVALID) VALUES ('kwashington1@eventbrite.com','Katherine','Washington','597006267896 ','111','1991-06-07','M','F');
INSERT INTO EDUCATION (APPLICANTID,NAME,MAJOR,MINOR,DIPLOMA,STARTDATE,ENDDATE) VALUES ('aa@aa.com','Atomi College','Support','Accounting','g','2016-08-08','2016-06-15');
INSERT INTO EDUCATION (APPLICANTID,NAME,MAJOR,MINOR,DIPLOMA,STARTDATE,ENDDATE) VALUES ('kwashington1@eventbrite.com','Atomi College','Marketing','Accounting','q','2016-08-09','2016-06-16');
INSERT INTO EXPERIENCE (APPLICANTID,WORKNAME,WORKJOBTITLE,STARTDATE,ENDDATE) VALUES ('aa@aa.com','Buzzdog','Administrative','2016-01-19','2016-04-23');
INSERT INTO EXPERIENCE (APPLICANTID,WORKNAME,WORKJOBTITLE,STARTDATE,ENDDATE) VALUES ('kwashington1@eventbrite.com','Omba','Design Engineer','2016-03-03','2016-07-17');
INSERT INTO PERSONALITY (PERID,JOBID,APPLICANTID,AGREEABLENESS,CONSCIENTIOUSNESS,EXTRAVERSION,OPENNESS,EMOTIONAL) VALUES (PER_SEQ.nextval,'','aa@aa.com','0.6324','0.0334','0.3763','0.9804','0.8221');
INSERT INTO PERSONALITY (PERID,JOBID,APPLICANTID,AGREEABLENESS,CONSCIENTIOUSNESS,EXTRAVERSION,OPENNESS,EMOTIONAL) VALUES (PER_SEQ.nextval,'','kwashington1@eventbrite.com','0.0008','0.4801','0.8779','0.6017','0.1057');
INSERT INTO SKILLS (SKILLID,APPLICANTID,JOBID,SKILLNAME,SKILLLEVEL,CERTNAME,CERTDATE,CERTFROM) VALUES (SKILL_SEQ.nextval,'aa@aa.com','','Lunch','w','Nitrogen','2015-02-03','AvPAK');
INSERT INTO SKILLS (SKILLID,APPLICANTID,JOBID,SKILLNAME,SKILLLEVEL,CERTNAME,CERTDATE,CERTFROM) VALUES (SKILL_SEQ.nextval,'kwashington1@eventbrite.com','','RDFa','p','Aconitum Napellus Aesculus Hippocastanum Colchicum Autumnale Hypericum Perforatum Magnesia Phosphorica','2015-02-04','AvPAK');
INSERT INTO CULTURE (CULTUREID,APPLICANTID,COMPID,NEEDHARMONY,NEEDcuriosity,NEEDIDEAL,NEEDCLOSENESS,NEEDSELFEXPRESSION,NEEDLIBERTY,NEEDLOVE,NEEDPRACTICALITY,NEEDSTABILITY,NEEDCHALLENGE,NEEDSTRUCTURE) VALUES (CULTUREID_SEQ.nextval,'aa@aa.com','','0.1758','0.9876','0.5221','0.7357','0.8953','0.9239','0.0166','0.3787','0.6571','0.5254','0.5347');
INSERT INTO CULTURE (CULTUREID,APPLICANTID,COMPID,NEEDHARMONY,NEEDcuriosity,NEEDIDEAL,NEEDCLOSENESS,NEEDSELFEXPRESSION,NEEDLIBERTY,NEEDLOVE,NEEDPRACTICALITY,NEEDSTABILITY,NEEDCHALLENGE,NEEDSTRUCTURE) VALUES (CULTUREID_SEQ.nextval,'kwashington1@eventbrite.com','','0.0224','0.0208','0.4535','0.4284','0.9865','0.8367','0.1721','0.5462','0.2436','0.1002','0.0091');


INSERT INTO APPLICANT (APPLICANTID,APPLICANTFIRST,APPLICANTLAST,APPLICANTPHONE,APPLICANTPASSWORD,APPLICANTBDAY,APPLICANTGENDER,APPLICANTVALID) VALUES ('bb@bb.com','aa','aa','821053339592 ','111','1984-06-18','M','N');
INSERT INTO PERSONALITY (PERID,JOBID,APPLICANTID,AGREEABLENESS,CONSCIENTIOUSNESS,EXTRAVERSION,OPENNESS,EMOTIONAL) VALUES (PER_SEQ.nextval,'','bb@bb.com','0.6324','0.0334','0.3763','0.9804','0.8221');
INSERT INTO EXPERIENCE (APPLICANTID,WORKNAME,WORKJOBTITLE,STARTDATE,ENDDATE) VALUES ('bb@bb.com','Buzzdog','Administrative','2016-01-19','2016-04-23');
INSERT INTO SKILLS (SKILLID,APPLICANTID,JOBID,SKILLNAME,SKILLLEVEL,CERTNAME,CERTDATE,CERTFROM) VALUES (SKILL_SEQ.nextval,'bb@bb.com','','Lunch','w','Nitrogen','2015-02-03','AvPAK');
INSERT INTO CULTURE (CULTUREID,APPLICANTID,COMPID,NEEDHARMONY,NEEDcuriosity,NEEDIDEAL,NEEDCLOSENESS,NEEDSELFEXPRESSION,NEEDLIBERTY,NEEDLOVE,NEEDPRACTICALITY,NEEDSTABILITY,NEEDCHALLENGE,NEEDSTRUCTURE) VALUES (CULTUREID_SEQ.nextval,'bb@bb.com','','0.1758','0.9876','0.5221','0.7357','0.8953','0.9239','0.0166','0.3787','0.6571','0.5254','0.5347');
INSERT INTO EDUCATION (APPLICANTID,NAME,MAJOR,MINOR,DIPLOMA,STARTDATE,ENDDATE) VALUES ('bb@bb.com','Atomi College','Support','Accounting','g','2016-08-08','2016-06-15');

INSERT INTO APPLICANT (APPLICANTID,APPLICANTFIRST,APPLICANTLAST,APPLICANTPHONE,APPLICANTPASSWORD,APPLICANTBDAY,APPLICANTGENDER,APPLICANTVALID) VALUES ('dd@dd.com','aa','aa','821053339592 ','111','1984-06-18','M','N');
INSERT INTO PERSONALITY (PERID,JOBID,APPLICANTID,AGREEABLENESS,CONSCIENTIOUSNESS,EXTRAVERSION,OPENNESS,EMOTIONAL) VALUES (PER_SEQ.nextval,'','dd@dd.com','0.6324','0.0334','0.3763','0.9804','0.8221');
INSERT INTO EXPERIENCE (APPLICANTID,WORKNAME,WORKJOBTITLE,STARTDATE,ENDDATE) VALUES ('dd@dd.com','Buzzdog','Administrative','2016-01-19','2016-04-23');
INSERT INTO SKILLS (SKILLID,APPLICANTID,JOBID,SKILLNAME,SKILLLEVEL,CERTNAME,CERTDATE,CERTFROM) VALUES (SKILL_SEQ.nextval,'dd@dd.com','','Lunch','w','Nitrogen','2015-02-03','AvPAK');
INSERT INTO CULTURE (CULTUREID,APPLICANTID,COMPID,NEEDHARMONY,NEEDcuriosity,NEEDIDEAL,NEEDCLOSENESS,NEEDSELFEXPRESSION,NEEDLIBERTY,NEEDLOVE,NEEDPRACTICALITY,NEEDSTABILITY,NEEDCHALLENGE,NEEDSTRUCTURE) VALUES (CULTUREID_SEQ.nextval,'dd@dd.com','','0.1758','0.9876','0.5221','0.7357','0.8953','0.9239','0.0166','0.3787','0.6571','0.5254','0.5347');
INSERT INTO EDUCATION (APPLICANTID,NAME,MAJOR,MINOR,DIPLOMA,STARTDATE,ENDDATE) VALUES ('dd@dd.com','Atomi College','Support','Accounting','g','2016-08-08','2016-06-15');



commit