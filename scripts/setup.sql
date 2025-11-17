-- Use your existing role that has database and warehouse creation privileges
-- Uncomment and specify your role below:
-- USE ROLE YOUR_EXISTING_ROLE;

SET USERNAME = (SELECT CURRENT_USER());
SELECT $USERNAME;

CREATE OR REPLACE WAREHOUSE ML_HOL_WH; --by default, this creates an XS Standard Warehouse
CREATE OR REPLACE DATABASE ML_HOL_DB;
CREATE OR REPLACE SCHEMA ML_HOL_SCHEMA;
CREATE OR REPLACE STAGE ML_HOL_ASSETS DIRECTORY = (ENABLE = TRUE); --to store model assets
