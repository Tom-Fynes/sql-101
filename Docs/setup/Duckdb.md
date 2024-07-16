# Configure DuckDB

DuckDB is an open source database management system which supports either persisting databases or an in-memory mode. This setup page will demonstrate how to configure either of these options.

## In-Memory Mode

1. Install Dbeaver Community
2. Open DBeaver and in the top left hand corner select the new connection button
   
<img width="468" alt="image" src="https://github.com/user-attachments/assets/0be1893e-d0e8-4b73-9a5c-5d505c111f3b">
<br>
<br>

3. In the new window search for `DuckDB`, select and click `next`
<br>
<img width="691" alt="image" src="https://github.com/user-attachments/assets/96546669-ffc5-4c4b-85d8-2c55cb7112cd">
<br>
<br>

4. To connect to an in-memory version of DuckDB you will need to add `:memory:` to the path input field
<br>
<img width="698" alt="image" src="https://github.com/user-attachments/assets/8fa0b3d9-fa66-4571-947b-b10585ad26e3">
<br>
<br>

5. Click ok
6. You will now see a new database on the left hand side (Database Navigator) called `DuckDB`
<br>
<img width="394" alt="image" src="https://github.com/user-attachments/assets/19abc3cf-7efa-4b50-a058-71ad07ff3f4e">
<br>
<br>

7. You can now run queries against this database by:
  1. Right click the database
  2. Select `SQL Editor`
  3. select `New SQL Script`
<br>
<img width="474" alt="image" src="https://github.com/user-attachments/assets/279002f2-9f6c-4b73-a144-55479618d322">


## Persistent Database

To use a persisted version of DuckDB please follow the same steps from the in-memory section however, at step 4 please see below;

1. In the `connect to database window` select `create`.
2. Now in the new window add `SQL101.duckdb` to the save as field and select the correct folder to save this in.
<br>
<img width="436" alt="image" src="https://github.com/user-attachments/assets/6786de7e-eb2c-4560-8a2c-e9cda50001af">
<br>
<br>

3. Select finish
4. You will now see a new database on the left hand side (Database Navigator) called `SQL101.duckdb`
5. Please folow the remaining steps from the in-memory section

## Creating the Database Schema

Now that the connections have been established you can create the database schema found [here](https://github.com/Tom-Fynes/sql-101/blob/main/Resources/Create_Databases.sql). To run this you will need to select all of the code and execute as DuckDB requires all the statements are run in a single trasnaction.

### Notes

* If you are using the in-memory mode you will need to re-create the database everytime you close the connect and re-establish.
* With the persisted database after creating the schema you will need to run `Use SQL101` first to be able to run the sql statements.



