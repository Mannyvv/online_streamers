Title: Online_Streamers
Description: The database contains data of online streamers with the games they play, streaming software used, and their tiktok account information. 
Tables: See folder with screenshots

How did the project's design evolve over time?
The project evolved, devolved, and then evolved into a different path. The initial draft of the data tables changed as I realized some data was not required or even obtainable. 
Once the draft database was completed, I was able to connect to Postgresql without issue. I then started to work on an ORM version of the project, but as I went through it was apparent that using raw SQL was much easier for this project. The knowledge for Insomnia was limited and couldn’t rely on that to complete my database. 
Did you choose to use an ORM or raw SQL? Why?
I chose raw SQL in the end because of the database size. It was much simpler to write out the SQL in VScode then upload to Postgresql. Using the alembic to update and delete changes was simple and less programming.

What future improvements are in store, if any?
1. Upload real data
2. Use ORM to add new tables and data to create a robust DB with more data.
3. Create a UI with python to upload data quicker.
