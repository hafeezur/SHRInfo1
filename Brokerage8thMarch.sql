CREATE USER BrokerageUser identified by oracle;

grant create session to BrokerageUser;

show user;

GRANT CREATE TABLE to BrokerageUser;

create table IBS_COMPANY(CODE VARCHAR2(10),SHORTNAME VARCHAR2(10),NAME VARCHAR2(10),ADDRESS VARCHAR2(200),LANDLINE VARCHAR2(30),LOCATION_LATTITUDE int,LOCATION_LONGITUDE int,STATUS VARCHAR2(1),REC_CRE_USER_ID int,
REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (CODE)); 



create table IBS_COMPANY_BRANCH(CODE VARCHAR2(10),SHORTNAME VARCHAR2(10),COMPANY_CODE VARCHAR2(10),NAME VARCHAR2(30),ADDRESS VARCHAR2(200),COUNTRY VARCHAR2(50),ABBR VARCHAR2(4),INCHARGE_NAME VARCHAR2(50),INCHARGE_NO VARCHAR2(30),
LANDLINE VARCHAR2(30),LOCATION_LATTITUDE int,LOCATION_LONGITUDE int,EMAILID VARCHAR2(30),STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (CODE),FOREIGN KEY (COMPANY_CODE) REFERENCES IBS_COMPANY(CODE));



create table IBS_INSURANCE_COMPANY(CODE VARCHAR2(10),SHORTNAME VARCHAR2(10),NAME VARCHAR2(10),ADDRESS VARCHAR2(200),CITY VARCHAR2(25),COUNTRY VARCHAR2(50),LANDLINE VARCHAR2(30),FAXNO VARCHAR2(30),EMAILID VARCHAR2(30)
,STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (CODE)); 


create table IBS_PRODUCT_MASTER(CLASS int,NAME VARCHAR2(30),SHORTNAME VARCHAR2(15),CATEGORISATION VARCHAR2(15),STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (CLASS));


create table IBS_INSURANCE_COMPANY_CONTACT(ID int,COMPANY_CODE VARCHAR2(10),COMPANY_NAME VARCHAR2(50),PRODUCT_CLASS int,CONTACT_PERSON VARCHAR2(15),CONTACT_EMAILID VARCHAR2(30),STATUS VARCHAR2(1),
REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID),FOREIGN KEY (COMPANY_CODE) REFERENCES IBS_COMPANY(CODE),FOREIGN KEY (PRODUCT_CLASS) REFERENCES IBS_PRODUCT_MASTER(CLASS));


create table IBS_PRODUCT_UW_FIELDS(ID int,PRODUCT_CLASS int,SRL_NO int,FIELD_NAME VARCHAR2(30),FIELD_TYPE VARCHAR2(30),IS_MANDATORY VARCHAR2(1),FIELD_LENGTH int,STATUS VARCHAR2(1),
SOURCE_OF_DATA VARCHAR2(25),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID),FOREIGN KEY (PRODUCT_CLASS) REFERENCES IBS_PRODUCT_MASTER(CLASS));


create table IBS_USER(ID int,LOGIN_NAME VARCHAR2(10),PASSWORD VARCHAR2(10),DESCRIPTION VARCHAR2(45),NAME VARCHAR2(100),CONTACT_NO VARCHAR2(20),EMAIL_ID VARCHAR2(50),BRANCH_CODE int,FREEZE_FLAG 
VARCHAR2(1),STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,primary key(ID));


create table IBS_USER_PRODUCT_LINK(ID int,USER_ID int,PRODUCT_CLASS int,STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,
REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID),FOREIGN KEY (PRODUCT_CLASS) REFERENCES IBS_PRODUCT_MASTER(CLASS),FOREIGN KEY (USER_ID) REFERENCES IBS_USER(ID));


create table IBS_USER_ROLE_LINK(ID int,USER_ID int,ROLE_ID int,STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,primary key(ID));

create table IBS_INSURANCE_COMP_PROD_LINK(ID int,PRODUCT_CLASS int,COMPANY_CODE VARCHAR2(10),STATUS VARCHAR2(1),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID),FOREIGN KEY (PRODUCT_CLASS) REFERENCES IBS_PRODUCT_MASTER(CLASS));

create table IBS_CUSTOMER(ID int,SALUTATION VARCHAR2(5),NAME VARCHAR2(100),CATEGORY VARCHAR2(15),CUST_GROUP VARCHAR2(50),
CLASSIFICATION VARCHAR2(15),SOURCE VARCHAR2(15),EMAIL VARCHAR2(45),ALTERNATE_EMAIL VARCHAR2(45),ADDRESS VARCHAR2(200),LANDLINE VARCHAR2(15),CONTACT VARCHAR2(50),MOBILENO VARCHAR2(15),
LOCATION VARCHAR2(50),LOCATION_LATTITUDE int,LOCATION_LONGITUDE int,REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID));

create table IBS_INSURED_MASTER(ID int,CUSTOMER_ID int,SALUTATION VARCHAR2(5),NAME VARCHAR2(100),SOURCE VARCHAR2(15),ADDRESS VARCHAR2(200),EMAIL VARCHAR2(45),ALTERNATE_EMAIL VARCHAR2(45),
CONTACT VARCHAR2(50),LANDLINE VARCHAR2(15),MOBILENO VARCHAR2(15),LOCATION VARCHAR2(50),LOCATION_LATTITUDE int,LOCATION_LONGITUDE int,REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES IBS_CUSTOMER(ID));

create table IBS_CUSTOMER_ENQUIRY(ENQUIRY_NO int,CUSTOMER_ID int,TYPE VARCHAR2(15),RECEIVED_DATE Timestamp,RCVD_FROM VARCHAR2(50),RCVD_EMAILID VARCHAR2(50),
RCVD_CONTACTNO VARCHAR2(50),PRODUCT_CLASS int,ENQUIRY_DESCRIPTION VARCHAR2(500),ENQUIRY_SUBJECTMATTER_EXPERT VARCHAR2(50),REC_CRE_USER_ID int,REC_CRE_DATE Timestamp,REC_UPD_USER_ID int,REC_UPD_DATE Timestamp,PRIMARY KEY (ENQUIRY_NO),FOREIGN KEY (CUSTOMER_ID) REFERENCES IBS_CUSTOMER(ID),
FOREIGN KEY (PRODUCT_CLASS) REFERENCES IBS_PRODUCT_MASTER(CLASS));


































create table demo(id1 VARCHAR2(10),id2 int,id3 DATE,PRIMARY KEY (id1));

create table demo1(id1 VARCHAR2(10),id2 int,id3 TimeStamp,PRIMARY KEY (id1));

desc demo1;

