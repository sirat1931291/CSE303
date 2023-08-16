-- CREATE TABLE Client_T(
--     c_NID INT(20) NOT NULL,
--     c_name VARCHAR(50),
--     c_fathers_name VARCHAR(50),
--     c_husbands_name VARCHAR(50),
--     c_mothers_name VARCHAR(50),
--     c_dob DATETIME,
--     c_gender VARCHAR(10),
--     c_nationality VARCHAR(20),
--     c_present_address VARCHAR(100),
--     c_present_city VARCHAR(20),
--     c_present_post VARCHAR(20),
--     c_present_country VARCHAR(30),
--     c_permanent_address VARCHAR(100),
--     c_permanent_city VARCHAR(20),
--     c_permanent_post VARCHAR(20),
--     c_permanent_country VARCHAR(30),
--     c_mobile VARCHAR(30),
--     c_tel VARCHAR(30),
--     c_occupation VARCHAR(30),
--     c_email VARCHAR(50),
--     c_etin VARCHAR(30),
--     c_ppno VARCHAR(30),
--     c_type VARCHAR(10),
--     CONSTRAINT Client_PK PRIMARY KEY (c_NID)
-- );






-- CREATE TABLE Power_Of_Atorny_T(
--     p_NID INT(20) NOT NULL,
--     p_title VARCHAR(50),
--     p_name VARCHAR(50),
--     p_dob DATETIME,
--     p_nationality VARCHAR(20),
--     p_address VARCHAR(100),
--     p_city VARCHAR(20),
--     p_post VARCHAR(20),
--     p_state VARCHAR(20),
--     p_country VARCHAR(30),
--     p_mobile VARCHAR(30),
--     p_tel VARCHAR(30),
--     p_fax VARCHAR(30),
--     p_email VARCHAR(50),
--     p_ppno VARCHAR(30),
--     CONSTRAINT Power_Of_Atorny_PK PRIMARY KEY (p_NID)
-- );





-- CREATE TABLE Joint_Account_T(
--     j_NID INT(20) NOT NULL,
--     j_name VARCHAR(50),
--     j_title VARCHAR(50),
--     j_fathers_name VARCHAR(50),
--     j_mothers_name VARCHAR(50),
--     j_spouse_name VARCHAR(50),
--     j_dob DATETIME,
--     j_gender VARCHAR(10),
--     j_nationality VARCHAR(20),
--     j_address VARCHAR(100),
--     j_city VARCHAR(20),
--     j_post VARCHAR(20),
--     j_country VARCHAR(30),
--     j_mobile VARCHAR(30),
--     j_occupation VARCHAR(30),
--     j_email VARCHAR(50),
--     j_etin VARCHAR(30),
--     CONSTRAINT Joint_Account_PK PRIMARY KEY (j_NID)
-- );






-- CREATE TABLE Authorised_Person_T(
--     a_p_NID INT(20) NOT NULL,
--     a_p_name VARCHAR(50),
--     a_p_fathers_name VARCHAR(50),
--     a_p_spouse_name VARCHAR(50),
--     a_p_dob DATETIME,
--     a_p_gender VARCHAR(10),
--     a_p_nationality VARCHAR(20),
--     a_p_present_address VARCHAR(100),
--     a_p_permanent_address VARCHAR(100),
--     a_p_email VARCHAR(50),
--     a_p_mobile VARCHAR(30),
--     a_p_telephone VARCHAR(30),
--     a_p_occupation VARCHAR(30),
--     a_p_etin VARCHAR(30),
--     authorised_type VARCHAR(20),
--     CONSTRAINT Authorised_Person_PK PRIMARY KEY (a_p_NID)
-- );








-- CREATE TABLE Nominee_T(
--     n_NID INT(20) NOT NULL,
--     n_title VARCHAR(50),
--     n_name VARCHAR(50),
--     n_mobile VARCHAR(30),
--     n_address VARCHAR(100),
--     n_city VARCHAR(20),
--     n_post VARCHAR(20),
--     n_state VARCHAR(20),
--     n_gender VARCHAR(10),
--     n_dob DATETIME,
--     n_nationality VARCHAR(20),
--     n_percentage INT(3),
--     nom_relation_with_client VARCHAR(30),
--     n_ppno VARCHAR(20),
--     CONSTRAINT Nominee_PK PRIMARY KEY (n_NID)
-- );




-- CREATE TABLE Introducer_T(
--     int_id INT(10) NOT NULL,
--     int_name VARCHAR(50),
--     int_contact VARCHAR(50),
--     int_email VARCHAR(50),
--     int_occupation VARCHAR(50),
--     CONSTRAINT Introducer_PK PRIMARY KEY(int_id)
-- );




-- CREATE TABLE Bank_T(
--     bank_code VARCHAR(10) NOT NULL,
--     bank_branch_code VARCHAR(10) NOT NULL,
--     routing_no VARCHAR(10) NOT NULL,
--     bank_account_no VARCHAR(10) NOT NULL,
--     CONSTRAINT Bank_PK PRIMARY KEY(bank_code)
-- );




-- CREATE TABLE BO_Account_T(
--     bo_id INT(10) NOT NULL,
--     account_type VARCHAR(20),
--     CONSTRAINT BO_Account_PK PRIMARY KEY(bo_id)
-- );






-- CREATE TABLE Minor_T(
--     n_NID INT(20) NOT NULL,
--     guardian_name VARCHAR(50),
--     guardian_dob DATETIME,
--     guardian_mobile VARCHAR(30),
--     guardian_address VARCHAR(50),
--     guardian_NID int(20),
--     CONSTRAINT Minor_PK PRIMARY KEY (n_NID),
--     CONSTRAINT Minor_FK FOREIGN KEY (n_NID) REFERENCES Nominee_T (n_NID)
-- );




-- CREATE TABLE Customer_Relation_Manager_T(
--     c_r_m_id INT(20),
--     c_r_m_name VARCHAR(50),
--     CONSTRAINT Customer_Relation_Manager_PK PRIMARY KEY(c_r_m_id)
-- );




-- CREATE TABLE Head_Of_Sattelment_T(
--     h_s_id INT(20),
--     h_s_name VARCHAR(50),
--     CONSTRAINT Head_Of_Sattelment_PK PRIMARY KEY(h_s_id)
-- );




-- CREATE TABLE Card_T(
--     c_NID INT(20) NOT NULL,
--     bo_id INT(10) NOT NULL,
--     product_type VARCHAR(20),
--     card_account_no int(20),
--     card_status VARCHAR(30),
--     card_sig VARCHAR(200),
--     CONSTRAINT Card_PK PRIMARY KEY(c_NID, bo_id),
--     CONSTRAINT Card_FK1 FOREIGN KEY(c_NID) REFERENCES Client_T(c_NID),
--     CONSTRAINT Card_FK2 FOREIGN KEY(bo_id) REFERENCES BO_Account_T(bo_id)
--     -- CONSTRAINT Card_FK3 FOREIGN KEY(c_sig) REFERENCES Photo_T(c_sig)
-- );




-- CREATE TABLE Value_Added_Servce_T(
--     c_NID INT(20) NOT NULL,
--     investor_id INT(20) NOT NULL,
--     investor_name VARCHAR(50),
--     investor_bo_id INT(10),
--     investor_email VARCHAR(50),
--     investor_mobile VARCHAR(30),
--     investor_trading VARCHAR(30),
--     CONSTRAINT Value_Added_Servce_PK PRIMARY KEY (c_NID, investor_id),
--     CONSTRAINT Value_Added_Servce_FK1 FOREIGN KEY (c_nid) REFERENCES Client_T(c_nid),
--     CONSTRAINT Value_Added_Servce_FK2 FOREIGN KEY (investor_bo_id) REFERENCES BO_Account_T(bo_id)
-- );







-- CREATE TABLE Photo_T(
--     p_NID INT(20) NOT NULL,
--     c_nid INT(20) NOT NULL,
--     j_NID INT(20) NOT NULL,
--     a_p_NID INT(20) NOT NULL,
--     n_NID INT(20) NOT NULL,
--     c_r_m_id INT(20),
--     h_s_id INT(20),

--     c_photo VARCHAR(200),
--     p_photo VARCHAR(200),
--     j_photo VARCHAR(200),
--     a_p_photo VARCHAR(200),
--     n_photo  VARCHAR(200),

--     c_sig VARCHAR(200),
--     p_sig VARCHAR(200),
--     j_sig VARCHAR(200),
--     a_p_sig VARCHAR(200),
--     n_sig VARCHAR(200),
--     c_r_m_sig VARCHAR(200),
--     h_s_sig VARCHAR(200),

--     CONSTRAINT Photo_PK PRIMARY KEY (p_NID, c_NID, j_NID, a_p_NID, n_NID, c_r_m_id, h_s_id),
--     CONSTRAINT Photo_FK1 FOREIGN KEY (p_NID) REFERENCES Power_Of_Atorny_T(p_NID),
--     CONSTRAINT Photo_FK2 FOREIGN KEY (c_NID) REFERENCES Client_T(c_NID),
--     CONSTRAINT Photo_FK3 FOREIGN KEY (j_NID) REFERENCES Joint_Account_T(j_NID),
--     CONSTRAINT Photo_FK4 FOREIGN KEY (a_p_NID) REFERENCES Authorised_Person_T(a_p_NID),
--     CONSTRAINT Photo_FK5 FOREIGN KEY (n_NID) REFERENCES Nominee_T(n_NID),
--     CONSTRAINT Photo_FK6 FOREIGN KEY (c_r_m_id) REFERENCES Customer_Relation_Manager_T(c_r_m_id),
--     CONSTRAINT Photo_FK7 FOREIGN KEY (h_s_id) REFERENCES Head_Of_Sattelment_T(h_s_id)
-- );

