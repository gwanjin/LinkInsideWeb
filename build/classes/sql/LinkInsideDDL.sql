
/* Drop Tables */

DROP TABLE CULTURE CASCADE CONSTRAINTS;
DROP TABLE EDUCATION CASCADE CONSTRAINTS;
DROP TABLE Experience CASCADE CONSTRAINTS;
DROP TABLE MATCHING CASCADE CONSTRAINTS;
DROP TABLE PERSONALITY CASCADE CONSTRAINTS;
DROP TABLE Skills CASCADE CONSTRAINTS;
DROP TABLE APPLICANT CASCADE CONSTRAINTS;
DROP TABLE JOB CASCADE CONSTRAINTS;
DROP TABLE COMPANY CASCADE CONSTRAINTS;




/* Create Tables */

-- 개인유저
CREATE TABLE APPLICANT
(
	-- APPLICANT_ID
	ID varchar2(50) NOT NULL,
	-- APPLICANT_FIRST
	APPLICANT_FIRST varchar2(20) NOT NULL,
	-- APPLICANT_LAST
	APPLICANT_LAST varchar2(20) NOT NULL,
	-- APPLICANT_PHONE
	APPLICANT_PHONE varchar2(15) NOT NULL,
	-- APPLICANT_PASSWORD
	APPLICANT_PASSWORD varchar2(20) NOT NULL,
	-- APPLICANT_BDAY
	APPLICANT_BDAY date NOT NULL,
	-- APPLICANT_GENDER
	APPLICANT_GENDER char(1) NOT NULL,
	-- APPLICANT_VALID
	APPLICANT_VALID char(1) NOT NULL,
	PRIMARY KEY (APPLICANT_ID)
);


-- COMPANY
CREATE TABLE COMPANY
(
	-- COMP_ID
	COMP_ID varchar2(50) NOT NULL,
	-- COMP_PASSWORD
	COMP_PASSWORD varchar2(20) NOT NULL,
	-- COMP_NAME
	COMP_NAME varchar2(20) NOT NULL,
	-- COMP_ADDRESS
	COMP_ADDRESS varchar2(100) NOT NULL,
	-- COMP_AREA
	COMP_AREA varchar2(20) NOT NULL,
	-- COMP_SIZE
	COMP_SIZE number(7,0) NOT NULL,
	-- COMP_VALID
	COMP_VALID char(1) NOT NULL,
	-- COMP_PHONE
	COMP_PHONE varchar2(20) NOT NULL,
	-- COMP_NUM
	COMP_NUM varchar2(20),
	PRIMARY KEY (COMP_ID)
);


-- CULTURE
CREATE TABLE CULTURE
(
	-- CULTURE_ID
	CULTURE_ID varchar2(20) NOT NULL,
	-- APPLICANT_ID
	ID varchar2(50),
	-- COMP_ID
	COMP_ID varchar2(50),
	-- NEED_HARMONY
	NEED_HARMONY number(2,2),
	-- NEED_Curiosity
	NEED_Curiosity number(2,2),
	-- NEED_Ideal
	NEED_Ideal number(2,2),
	-- NEED_Closeness
	NEED_Closeness number(2,2),
	-- NEED_SelfExpression
	NEED_SelfExpression number(2,2),
	-- NEED_Liberty
	NEED_Liberty number(2,2),
	-- NEED_Love
	NEED_Love number(2,2),
	-- NEED_Practicality
	NEED_Practicality number(2,2),
	-- NEED_Stability
	NEED_Stability number(2,2),
	-- NEED_Challenge
	NEED_Challenge number(2,2),
	-- NEED_Structure
	NEED_Structure number(2,2),
	-- VALUE_SELF
	VALUE_SELF number(2,2),
	-- VALUE_CONSERVATION
	VALUE_CONSERVATION number(2,2),
	-- VALUE_HEDONISM
	VALUE_HEDONISM number(2,2),
	-- VALUE_ENHANCEMENT
	VALUE_ENHANCEMENT number(2,2),
	-- VALUE_OPEN
	VALUE_OPEN number(2,2),
	PRIMARY KEY (CULTURE_ID)
);


-- EDUCATION
CREATE TABLE EDUCATION
(
	-- APPLICANT_ID
	ID varchar2(50) NOT NULL,
	-- NAME
	NAME varchar2(20) NOT NULL,
	-- MAJOR
	MAJOR varchar2(20) NOT NULL,
	-- MINOR
	MINOR varchar2(20),
	-- DIPLOMA
	DIPLOMA varchar2(20),
	-- start_date
	start_date date,
	-- end_date
	end_date date,
	PRIMARY KEY (ID, NAME)
);


-- Experience
CREATE TABLE Experience
(
	-- APPLICANT_ID
	ID varchar2(50) NOT NULL,
	-- work_name
	work_name varchar2(20) NOT NULL,
	-- work_jobtitle
	work_jobtitle varchar2(20),
	-- start_date
	start_date date,
	-- end_date
	end_date date,
	PRIMARY KEY (ID, work_name)
);


-- JOB
CREATE TABLE JOB
(
	-- JOB_ID
	JOB_ID varchar2(50) NOT NULL,
	-- COMP_ID
	COMP_ID varchar2(50) NOT NULL,
	-- JOB_TITLE
	JOB_TITLE varchar2(50),
	-- JOB_DESC
	JOB_DESC varchar2(200),
	-- JOB_TO
	JOB_TO number(3,0),
	-- JOB_APPLIED
	JOB_APPLIED number(3,0),
	-- EDU_MAJOR
	EDU_MAJOR varchar2(20),
	-- EDU_IMP
	EDU_LEVEL char(1),
	-- EXP_AREA
	EXP_AREA varchar2(30),
	-- EXP_PERIOD
	EXP_PERIOD number(3,0),
	-- EXP_IMP
	EXP_LEVEL char(1),
	PRIMARY KEY (JOB_ID)
);


-- MATCHING
CREATE TABLE MATCHING
(
	-- APPLICANT_ID
	ID varchar2(50) NOT NULL,
	-- JOB_ID
	JOB_ID varchar2(50) NOT NULL,
	-- cul_per
	cul_per number(2,2),
	-- skill_per
	skill_per number(2,2),
	-- per_per
	per_per number(2,2),
	-- total_per
	total_per number(2,2),
	-- status
	status varchar2(5),
	PRIMARY KEY (ID, JOB_ID)
);


-- PERSONALITY
CREATE TABLE PERSONALITY
(
	-- PER_ID
	PER_ID varchar2(20) NOT NULL,
	-- JOB_ID
	JOB_ID varchar2(50),
	-- APPLICANT_ID
	ID varchar2(50),
	-- Agreeableness_Altruism
	Agreeableness_Altruism number(2,2),
	-- Agreeableness_Contrary
	Agreeableness_Contrary number(2,2),
	-- Agreeableness_Proud
	Agreeableness_Proud number(2,2),
	-- Agreeableness_Compromising
	Agreeableness_Compromising number(2,2),
	-- Agreeableness_Hard_hearted
	Agreeableness_Hard_hearted number(2,2),
	-- Agreeableness_Cautious
	Agreeableness_Cautious number(2,2),
	-- Conscientiousness_Achievement
	Conscientiousness_Achievement number(2,2),
	-- Conscientiousness_Cautiousness
	Conscientiousness_Cautiousness number(2,2),
	-- Conscientiousness_Dutifulness
	Conscientiousness_Dutifulness number(2,2),
	-- Conscientiousness_Orderliness
	Conscientiousness_Orderliness number(2,2),
	-- Conscientiousness_discipline
	Conscientiousness_discipline number(2,2),
	-- Conscientiousness_efficacy
	Conscientiousness_efficacy number(2,2),
	-- Extraversion_Activity
	Extraversion_Activity number(2,2),
	-- Extraversion_Assertiveness
	Extraversion_Assertiveness number(2,2),
	-- Extraversion_Cheerfulness
	Extraversion_Cheerfulness number(2,2),
	-- Extraversion_Excitement
	Extraversion_Excitement number(2,2),
	-- Extraversion_Friendliness
	Extraversion_Friendliness number(2,2),
	-- Extraversion_Gregariousness
	Extraversion_Gregariousness number(2,2),
	-- Openness_Adventurous
	Openness_Adventurous number(2,2),
	-- Openness_Artistic
	Openness_Artistic number(2,2),
	-- Openness_Emotionality
	Openness_Emotionality number(2,2),
	-- Openness_Imagination
	Openness_Imagination number(2,2),
	-- Openness_Intellect
	Openness_Intellect number(2,2),
	-- Openness_Liberalism
	Openness_Liberalism number(2,2),
	-- Emotional_Anger
	Emotional_Anger number(2,2),
	-- Emotional_Anxiety
	Emotional_Anxiety number(2,2),
	-- Emotional_Depression
	Emotional_Depression number(2,2),
	-- Emotional_Immoderation
	Emotional_Immoderation number(2,2),
	-- Emotional_Consciousness
	Emotional_Consciousness number(2,2),
	-- Emotional_Vulnerability
	Emotional_Vulnerability number(2,2),
	PRIMARY KEY (PER_ID)
);


-- 새 테이블
CREATE TABLE Skills
(
	-- skill_seq
	skill_seq varchar2(20) NOT NULL,
	-- APPLICANT_ID
	ID varchar2(50),
	-- JOB_ID
	JOB_ID varchar2(50),
	-- skill_name
	skill_name varchar2(50),
	-- skill_level
	skill_level char(1),
	-- CERT_NAME
	CERT_NAME varchar2(20),
	-- CERT_DATE
	CERT_DATE date,
	-- CERT_FROM
	CERT_FROM varchar2(20),
	PRIMARY KEY (skill_seq)
);



/* Create Foreign Keys */

ALTER TABLE CULTURE
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE EDUCATION
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE Experience
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE MATCHING
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE PERSONALITY
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE Skills
	ADD FOREIGN KEY (ID)
	REFERENCES APPLICANT (ID)
;


ALTER TABLE CULTURE
	ADD FOREIGN KEY (COMP_ID)
	REFERENCES COMPANY (COMP_ID)
;


ALTER TABLE JOB
	ADD FOREIGN KEY (COMP_ID)
	REFERENCES COMPANY (COMP_ID)
;


ALTER TABLE MATCHING
	ADD FOREIGN KEY (JOB_ID)
	REFERENCES JOB (JOB_ID)
;


ALTER TABLE PERSONALITY
	ADD FOREIGN KEY (JOB_ID)
	REFERENCES JOB (JOB_ID)
;


ALTER TABLE Skills
	ADD FOREIGN KEY (JOB_ID)
	REFERENCES JOB (JOB_ID)
;



/* Comments */

COMMENT ON TABLE APPLICANT IS '개인유저';
COMMENT ON COLUMN APPLICANT.ID IS 'ID';
COMMENT ON COLUMN APPLICANT.APPLICANT_FIRST IS 'APPLICANT_FIRST';
COMMENT ON COLUMN APPLICANT.APPLICANT_LAST IS 'APPLICANT_LAST';
COMMENT ON COLUMN APPLICANT.APPLICANT_PHONE IS 'APPLICANT_PHONE';
COMMENT ON COLUMN APPLICANT.APPLICANT_PASSWORD IS 'APPLICANT_PASSWORD';
COMMENT ON COLUMN APPLICANT.APPLICANT_BDAY IS 'APPLICANT_BDAY';
COMMENT ON COLUMN APPLICANT.APPLICANT_GENDER IS 'APPLICANT_GENDER';
COMMENT ON COLUMN APPLICANT.APPLICANT_VALID IS 'APPLICANT_VALID';
COMMENT ON TABLE COMPANY IS 'COMPANY';
COMMENT ON COLUMN COMPANY.COMP_ID IS 'COMP_ID';
COMMENT ON COLUMN COMPANY.COMP_PASSWORD IS 'COMP_PASSWORD';
COMMENT ON COLUMN COMPANY.COMP_NAME IS 'COMP_NAME';
COMMENT ON COLUMN COMPANY.COMP_ADDRESS IS 'COMP_ADDRESS';
COMMENT ON COLUMN COMPANY.COMP_AREA IS 'COMP_AREA';
COMMENT ON COLUMN COMPANY.COMP_SIZE IS 'COMP_SIZE';
COMMENT ON COLUMN COMPANY.COMP_VALID IS 'COMP_VALID';
COMMENT ON COLUMN COMPANY.COMP_PHONE IS 'COMP_PHONE';
COMMENT ON COLUMN COMPANY.COMP_NUM IS 'COMP_NUM';
COMMENT ON TABLE CULTURE IS 'CULTURE';
COMMENT ON COLUMN CULTURE.CULTURE_ID IS 'CULTURE_ID';
COMMENT ON COLUMN CULTURE.ID IS 'ID';
COMMENT ON COLUMN CULTURE.COMP_ID IS 'COMP_ID';
COMMENT ON COLUMN CULTURE.NEED_HARMONY IS 'NEED_HARMONY';
COMMENT ON COLUMN CULTURE.NEED_Curiosity IS 'NEED_Curiosity';
COMMENT ON COLUMN CULTURE.NEED_Ideal IS 'NEED_Ideal';
COMMENT ON COLUMN CULTURE.NEED_Closeness IS 'NEED_Closeness';
COMMENT ON COLUMN CULTURE.NEED_SelfExpression IS 'NEED_SelfExpression';
COMMENT ON COLUMN CULTURE.NEED_Liberty IS 'NEED_Liberty';
COMMENT ON COLUMN CULTURE.NEED_Love IS 'NEED_Love';
COMMENT ON COLUMN CULTURE.NEED_Practicality IS 'NEED_Practicality';
COMMENT ON COLUMN CULTURE.NEED_Stability IS 'NEED_Stability';
COMMENT ON COLUMN CULTURE.NEED_Challenge IS 'NEED_Challenge';
COMMENT ON COLUMN CULTURE.NEED_Structure IS 'NEED_Structure';
COMMENT ON COLUMN CULTURE.VALUE_SELF IS 'VALUE_SELF';
COMMENT ON COLUMN CULTURE.VALUE_CONSERVATION IS 'VALUE_CONSERVATION';
COMMENT ON COLUMN CULTURE.VALUE_HEDONISM IS 'VALUE_HEDONISM';
COMMENT ON COLUMN CULTURE.VALUE_ENHANCEMENT IS 'VALUE_ENHANCEMENT';
COMMENT ON COLUMN CULTURE.VALUE_OPEN IS 'VALUE_OPEN';
COMMENT ON TABLE EDUCATION IS 'EDUCATION';
COMMENT ON COLUMN EDUCATION.ID IS 'ID';
COMMENT ON COLUMN EDUCATION.NAME IS 'NAME';
COMMENT ON COLUMN EDUCATION.MAJOR IS 'MAJOR';
COMMENT ON COLUMN EDUCATION.MINOR IS 'MINOR';
COMMENT ON COLUMN EDUCATION.DIPLOMA IS 'DIPLOMA';
COMMENT ON COLUMN EDUCATION.start_date IS 'start_date';
COMMENT ON COLUMN EDUCATION.end_date IS 'end_date';
COMMENT ON TABLE Experience IS 'Experience';
COMMENT ON COLUMN Experience.ID IS 'ID';
COMMENT ON COLUMN Experience.work_name IS 'work_name';
COMMENT ON COLUMN Experience.work_jobtitle IS 'work_jobtitle';
COMMENT ON COLUMN Experience.start_date IS 'start_date';
COMMENT ON COLUMN Experience.end_date IS 'end_date';
COMMENT ON TABLE JOB IS 'JOB';
COMMENT ON COLUMN JOB.JOB_ID IS 'JOB_ID';
COMMENT ON COLUMN JOB.COMP_ID IS 'COMP_ID';
COMMENT ON COLUMN JOB.JOB_TITLE IS 'JOB_TITLE';
COMMENT ON COLUMN JOB.JOB_DESC IS 'JOB_DESC';
COMMENT ON COLUMN JOB.JOB_TO IS 'JOB_TO';
COMMENT ON COLUMN JOB.JOB_APPLIED IS 'JOB_APPLIED';
COMMENT ON COLUMN JOB.EDU_MAJOR IS 'EDU_MAJOR';
COMMENT ON COLUMN JOB.EDU_LEVEL IS 'EDU_IMP';
COMMENT ON COLUMN JOB.EXP_AREA IS 'EXP_AREA';
COMMENT ON COLUMN JOB.EXP_PERIOD IS 'EXP_PERIOD';
COMMENT ON COLUMN JOB.EXP_LEVEL IS 'EXP_IMP';
COMMENT ON TABLE MATCHING IS 'MATCHING';
COMMENT ON COLUMN MATCHING.ID IS 'ID';
COMMENT ON COLUMN MATCHING.JOB_ID IS 'JOB_ID';
COMMENT ON COLUMN MATCHING.cul_per IS 'cul_per';
COMMENT ON COLUMN MATCHING.skill_per IS 'skill_per';
COMMENT ON COLUMN MATCHING.per_per IS 'per_per';
COMMENT ON COLUMN MATCHING.total_per IS 'total_per';
COMMENT ON COLUMN MATCHING.status IS 'status';
COMMENT ON TABLE PERSONALITY IS 'PERSONALITY';
COMMENT ON COLUMN PERSONALITY.PER_ID IS 'PER_ID';
COMMENT ON COLUMN PERSONALITY.JOB_ID IS 'JOB_ID';
COMMENT ON COLUMN PERSONALITY.ID IS 'ID';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Altruism IS 'Agreeableness_Altruism';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Contrary IS 'Agreeableness_Contrary';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Proud IS 'Agreeableness_Proud';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Compromising IS 'Agreeableness_Compromising';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Hard_hearted IS 'Agreeableness_Hard_hearted';
COMMENT ON COLUMN PERSONALITY.Agreeableness_Cautious IS 'Agreeableness_Cautious';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_Achievement IS 'Conscientiousness_Achievement';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_Cautiousness IS 'Conscientiousness_Cautiousness';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_Dutifulness IS 'Conscientiousness_Dutifulness';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_Orderliness IS 'Conscientiousness_Orderliness';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_discipline IS 'Conscientiousness_discipline';
COMMENT ON COLUMN PERSONALITY.Conscientiousness_efficacy IS 'Conscientiousness_efficacy';
COMMENT ON COLUMN PERSONALITY.Extraversion_Activity IS 'Extraversion_Activity';
COMMENT ON COLUMN PERSONALITY.Extraversion_Assertiveness IS 'Extraversion_Assertiveness';
COMMENT ON COLUMN PERSONALITY.Extraversion_Cheerfulness IS 'Extraversion_Cheerfulness';
COMMENT ON COLUMN PERSONALITY.Extraversion_Excitement IS 'Extraversion_Excitement';
COMMENT ON COLUMN PERSONALITY.Extraversion_Friendliness IS 'Extraversion_Friendliness';
COMMENT ON COLUMN PERSONALITY.Extraversion_Gregariousness IS 'Extraversion_Gregariousness';
COMMENT ON COLUMN PERSONALITY.Openness_Adventurous IS 'Openness_Adventurous';
COMMENT ON COLUMN PERSONALITY.Openness_Artistic IS 'Openness_Artistic';
COMMENT ON COLUMN PERSONALITY.Openness_Emotionality IS 'Openness_Emotionality';
COMMENT ON COLUMN PERSONALITY.Openness_Imagination IS 'Openness_Imagination';
COMMENT ON COLUMN PERSONALITY.Openness_Intellect IS 'Openness_Intellect';
COMMENT ON COLUMN PERSONALITY.Openness_Liberalism IS 'Openness_Liberalism';
COMMENT ON COLUMN PERSONALITY.Emotional_Anger IS 'Emotional_Anger';
COMMENT ON COLUMN PERSONALITY.Emotional_Anxiety IS 'Emotional_Anxiety';
COMMENT ON COLUMN PERSONALITY.Emotional_Depression IS 'Emotional_Depression';
COMMENT ON COLUMN PERSONALITY.Emotional_Immoderation IS 'Emotional_Immoderation';
COMMENT ON COLUMN PERSONALITY.Emotional_Consciousness IS 'Emotional_Consciousness';
COMMENT ON COLUMN PERSONALITY.Emotional_Vulnerability IS 'Emotional_Vulnerability';
COMMENT ON TABLE Skills IS '새 테이블';
COMMENT ON COLUMN Skills.skill_seq IS 'skill_seq';
COMMENT ON COLUMN Skills.ID IS 'ID';
COMMENT ON COLUMN Skills.JOB_ID IS 'JOB_ID';
COMMENT ON COLUMN Skills.skill_name IS 'skill_name';
COMMENT ON COLUMN Skills.skill_level IS 'skill_level';
COMMENT ON COLUMN Skills.CERT_NAME IS 'CERT_NAME';
COMMENT ON COLUMN Skills.CERT_DATE IS 'CERT_DATE';
COMMENT ON COLUMN Skills.CERT_FROM IS 'CERT_FROM';



