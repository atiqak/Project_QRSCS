create database QRSCS_Database

use QRSCS_Database

--USER TABLE

create table Users(
User_ID int not  null primary key identity,
Picture nvarchar(MAX),
Full_Name varchar (50) not  null,
Father_Name varchar(50) not  null,
NIC nvarchar(50) not  null,
Gender varchar(50) not  null,
DOB date not  null,
Contact_Number nvarchar(50) not  null,
Rank nvarchar(50),
Designation_Role varchar(50) not  null,
Address nvarchar(MAX) not  null,
City varchar(50)not  null,
State varchar(50)not  null,
UserName nvarchar(50)not  null,
Password nvarchar(50)not  null,
Creation_Date date,
Created_By varchar(50),
Update_Date date,
Updated_By varchar(50)
)

select * from Users

--NEW ADDMISSION TABLE

create table New_Admission (
GR_NO int not null primary key identity,
User_ID int not null foreign key references Users(User_ID),
Date_of_Addmission date not  null,
Student_First_Name  varchar(50) not  null,
Student_Last_Name  varchar(50) not  null,
Class int not  null,
Gender varchar(50) not  null,
Dob date not  null,
Place_of_Birth nvarchar(50) not  null,
Religion varchar(50) not  null,
Name_Last_School_Attended varchar(50),
Hobbies varchar(50),
Father_Name varchar(50) not  null,
Education varchar(50),
NIC nvarchar(50) not  null,
Relationship_with_Student varchar(50) not  null,
Monthly_Income nvarchar(50),
Occupation varchar(50),
Category varchar(30) not  null,
Address nvarchar(50) not  null,
City nvarchar(50) not  null,
State nvarchar(50) not  null,
Zip_Code nvarchar(10),
Contact nvarchar(50) not  null,
Phone_Residence nvarchar(50) not  null,
Phone_Office nvarchar(50),
Disability varchar(50) not  null,
Presenting_Complain nvarchar(50) not  null,
Update_Date date,
Updated_By varchar(50)
)


--CASE HISTORY TABLES

create table Case_History(
CaseHistory_ID int not null primary key identity,
GR_NO int not null foreign key references New_Admission(GR_NO),
Date_of_Examination date not null
)

create table Family_History(
Family_History_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Father_Name nvarchar(50) not null,
Father_Age int not null,
Father_Education nvarchar(50) ,
Father_Profession nvarchar(50) ,
Father_Financial_Status nvarchar(50) ,
Father_General_Health nvarchar(50) ,
Father_Blood_Group nvarchar(20) ,
Year_of_Marriage nvarchar(20) ,
Father_Age_at_the_time_of_Child_Birth int ,
Father_Paternal_Relationship nvarchar(50) ,
Father_Family_System nvarchar(50) ,
Mother_Name nvarchar(50),
Mother_Age int ,
Mother_Education nvarchar(50) ,
Mother_Profession nvarchar(50) ,
Mother_Financial_Status nvarchar(50) ,
Mother_General_Health nvarchar(50) ,
Mother_Blood_Group nvarchar(20) ,
Mother_Age_at_the_time_of_Child_Birth int ,
Mother_Paternal_Relationship nvarchar(50) ,
Mother_Family_System nvarchar(50) ,

)

create table Particulars_of_Sibling(
Particulars_of_Sibling_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Number_of_Siblings int not null,
Child_Order int ,
Any_Disability varchar(50)
)

create table Development_History(
Development_History_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Anemia varchar(10) not null,
Exposure_or_Radiation varchar(10) not null,
Rubella varchar(10) not null,
Attempted_Abortion varchar(10) not null,
Mediation_Drugs varchar(10) not null,
Alcohol varchar(10) not null,
Tobaco varchar(10) not null,
Any_Other_Development nvarchar(50),
Labor varchar(20) not null,
Condition_at_birth varchar(20) not null,
Attendant_During_Labour varchar(25) not null,
Juandice varchar(10) not null,
Convulsions varchar(10) not null,
Cyanotic_Attacks varchar(10) not null,
Feeding_Difficulty varchar(10) not null,
Any_Other_Neo_Natal_Period nvarchar(50) ,
)

create table Post_Natal(
Post_Natal_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Birth_Weight_Months nvarchar(20),
Smiling_Months nvarchar(20),
Cooing_Months nvarchar(20),
Neck_Control_Months nvarchar(20),
Teething_Months nvarchar(50),
Sitting_alone_Months nvarchar(20),
Crawling_Months nvarchar(20),
Walk_alone_Months nvarchar(20),
Spoke_1st_Word_Months nvarchar(20),
Able_to_Feed_alone_Months nvarchar(20),
Sphineter_Control_Months nvarchar(20),
Puberty_Months nvarchar(20),
Meningitis_Encephalitis_Months nvarchar(20),
Convulsion_Months nvarchar(20),
Head_Injury_Months nvarchar(20),
Dehydration_Months nvarchar(20),
Severe_Malnutrition_Months nvarchar(20),
Any_Other_illness_Months nvarchar(20),
Birth_Weight_Years nvarchar(20),
Smiling_Years nvarchar(20),
Cooing_Years nvarchar(20),
Neck_Control_Years nvarchar(20),
Teething_Years nvarchar(20) ,
Sitting_alone_Years nvarchar(20),
Crawling_Years nvarchar(20),
Walk_alone_Years nvarchar(20),
Spoke_1st_Word_Years nvarchar(50),
Able_to_Feed_alone_Years nvarchar(20),
Sphineter_Control_Years nvarchar(20),
Puberty_Years nvarchar(20),
Meningitis_Encephalitis_Years nvarchar(20),
Convulsion_Years nvarchar(20),
Head_Injury_Years nvarchar(20),
Dehydration_Years nvarchar(20),
Severe_Malnutrition_Years nvarchar(20), 
Any_Other_illness_Years nvarchar(50),
)

create table Medical_History(
Medical_History_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Measles_Answer varchar(10) not null,
Whooping_Enough_Answer varchar(10) not null,
Mumps_Answer varchar(10) not null,
Chickenpox_Answer varchar(10) not null,
Pneumonia_Answer varchar(10) not null,
Diphtheria_Answer varchar(10) not null,
Polio_Answer varchar(10) not null,
Influenza_Answer varchar(10) not null,
Typhoid_Answer varchar(10) not null,
Convulsion_Answer varchar(10) not null,
Rheumatic_Fever_Answer varchar(10) not null,
High_Grade_Fever_Answer varchar(10) not null,
Measles_Age int,
Whooping_Enough_Age int,
Mumps_Age int,
Chickenpox_Age int,
Pneumonia_Age int,
Diphtheria_Age int,
Polio_Age int,
Influenza_Age int,
Typhoid_Age int,
Convulsion_Age int,
Rheumatic_Fever_Age int,
High_Grade_Fever_Age int,
Any_Other nvarchar(50),
)

create table Education_History(
Education_History_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Name_of_School nvarchar(20),
Age_at_First_Admission nvarchar(20),
Performance nvarchar(20), 
Duration nvarchar(20), 
Reason_for_Withdrawal nvarchar(50)
)

create table Psycho_Social_Factors(
Psycho_Social_Factors_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Friends_Attitude nvarchar(20),
Sibling_Relationship nvarchar(20), 
HomeAndParent_Attitude nvarchar(30),
HobbiesAndInterest nvarchar(30)
)

create table Behavioral_Observation(
Behavioral_Observation_Answer_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Aggressive varchar(10) not null,
Restlessness varchar(10) not null,
Impulsivity varchar(10) not null,
Distractibility varchar(10) not null,
Destructive varchar(10) not null,
Hyper_Active varchar(10) not null,
Tantrum varchar(10) not null,
Self_Stimulation varchar(10) not null,
Shyness varchar(10) not null,
Complain varchar(10) not null,
Dependence varchar(10) not null,
Low_Self_Image varchar(10) not null,
Add_ varchar(10) not null,
Short_Attention_Span varchar(10) not null,
Poor_Motivation varchar(10) not null,
Isolation_ varchar(10) not null,
Withdrawn varchar(10) not null,
Asocial varchar(10) not null,
)

create table Conclusion(
Conclusion_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
Conclusion_text varchar(100)
)

create table Recommendation(
Recommendation_Answer_ID int not null primary key identity,
CaseHistory_ID int not null foreign key references Case_History(CaseHistory_ID),
IEP varchar(10) not null,
Physical_Therapy varchar(10) not null,
Occupational_Therapy varchar(10) not null,
Speech_Therapy varchar(10) not null,
Music_Therapy varchar(10) not null,
Vocational_Therapy varchar(10) not null,
Correction_of_Defect varchar(10) not null,
Glasses varchar(10) not null,
Heraing_Aid varchar(10) not null,
Orthopedic_appliance varchar(10) not null,
Attention_to_home_situation varchar(10) not null,
Parental_Counseling varchar(10) not null,
Any_other_Home nvarchar(50) not null,
Home_Based_Program varchar(10) not null,
Special_School varchar(10) not null,
Medication varchar(10) not null,
Any_other nvarchar(50) ,
)


--SPEECH CASE HISTORY TABLES


create table Speach_Case_History(
Speach_Case_History_ID int not null primary key identity,
GR_NO int not null foreign key references New_Admission(GR_NO),
)

create table General_Information(
General_Information_ID int not null primary key identity,
Speach_Case_History_ID int not null foreign key references Speach_Case_History(Speach_Case_History_ID),
Today_Date date not null,
Child_Primary_Language nvarchar (Max) not  null,
Parent_Primary_Language nvarchar (Max) not  null,
Live_With_Both_Parents nvarchar (Max) not  null,
Child_Primary_Caregiver nvarchar (Max) not  null,
Child_Primary_Caregiver_Language nvarchar (Max) not  null,
)

create table Speach_and_Langauge(
Speach_and_Langauge_ID int not null primary key identity,
Speach_Case_History_ID int not null foreign key references Speach_Case_History(Speach_Case_History_ID),
Speech_Text nvarchar (Max) not  null
)

create table Receptive_langauge(
Receptive_langauge_ID int not null primary key identity,
Speach_Case_History_ID int not null foreign key references Speach_Case_History(Speach_Case_History_ID),
Single_Words nvarchar (50) not  null,
Yes_No_Questions nvarchar (50) not  null,
Sentences nvarchar (50) not  null,
WH_Questions nvarchar (50) not  null,
Routine_Questions nvarchar (50) not null,
Conversation_Text nvarchar (50) not null,
)

create table Expressive_Langauage(
Expressive_Langauage_ID int not null primary key identity,
Speach_Case_History_ID int not null foreign key references Speach_Case_History(Speach_Case_History_ID),
Babble nvarchar (50) not  null,
First_Word nvarchar (50) not  null,
Combine_2_Word nvarchar (50) not  null,
Complete_Sentence nvarchar (50) not  null,
Gestures nvarchar (50) not null,
Phrases nvarchar (50) not null,
Sing_Language nvarchar (50) not null,
Sentence nvarchar (50) not null,
Words nvarchar (50) not null,
Conversation_Ex_Text nvarchar (50) not null,
When_Did_Concerned_Child_Speech nvarchar (50) not null,
Caused_Your_Child_Difficulty nvarchar (50) not null,
Worse_Better_Overtime nvarchar (50) not null,
Self_Consious_Speech_Langauge nvarchar (50) not null,
Speech_Language_Hearing_Family nvarchar (50) not null,
Professionals_Seen_Child nvarchar (50) not null
)

create table Developmental_History(
Developmental_History_ID int not null primary key identity,
Speach_Case_History_ID int not null foreign key references Speach_Case_History(Speach_Case_History_ID),
Use_Single_Word nvarchar (50) not  null,
Combine_Word nvarchar (50) not  null,
Name_Single_Object nvarchar (50) not  null,
Use_Simple_Sentence nvarchar (50) not  null,
Engage_Conversation nvarchar (50) not null,
Consistently_Sound nvarchar (50) not null,
Difficulty_Hearing_Speech nvarchar (50) not null,
HearingTest_Where_When nvarchar (50) not null,
Diificult_Understand_Speech nvarchar (50) not null,
SpecificSounds_Incoorectly nvarchar (50) not null,
Difficulty_Understanding_Direction nvarchar (50) not null,
Difficulty_PlayActivities nvarchar (50) not null,
Engage_Excussive_Repetition_Word nvarchar (50) not null,
Feeding_Problem nvarchar (50) not null,
)

--SPEECH THERAPY TABLES

create table Speech_Therapy_Assessment(
Speech_Therapy_Assessment_ID int not null primary key identity,
GR_NO int not null foreign key references New_Admission(GR_NO),
Speech_Test_Image varchar (Max) not  null,
Date_of_Assessment date not null,
)

--AUDIOLOGY ASSESSMENT

create table Audiology_Assessment (
Audiology_Assessment_ID int not null primary key identity,
GR_NO int not null foreign key references New_Admission(GR_NO),
Date_of_Assessment date not null,
Left_Ear_Picture nvarchar(MAX) not  null,
Right_Ear_Picture nvarchar(MAX) not  null,
)

--CREATE TEACHER TABLE

create table Create_Teacher(
Teacher_ID int not null primary key identity,
User_ID int not null foreign key references Users (User_ID) ,
Teacher_Picture varchar (Max) not null,
Teacher_Name nvarchar (50) not null,
Gender varchar(50) not  null,
NIC nvarchar(50) not  null,
Contact nvarchar(50) not  null,
Date_of_Birth date not null,
Email varchar (50) not null,
Address nvarchar(MAX) not  null,
City nvarchar(50) not  null,
State varchar(50) not null,
Status varchar (50) ,
Update_By varchar(50),
Update_Date date,
Creation_Date date
)