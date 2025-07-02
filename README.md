# State-city-wise-cyber-crime-motives-application

## 📦 Setup Instructions

### 1. Clone the Repository
Open a terminal or Git Bash and run:
git clone <repository-url>

### 2. Move the Project to XAMPP
Move the cloned folder into your XAMPP `htdocs` directory. Rename it to "project" if needed.
Example (manual step):
- Cut the folder you just cloned
- Paste it into: C:\xampp\htdocs\
- Ensure the final path looks like: C:\xampp\htdocs\project\

### 3. Import the Database
1. Open your web browser and go to: http://localhost/phpmyadmin
2. Create a new database named: project
3. Click on the `project` database in the sidebar
4. Click on the **Import** tab
5. Click **Choose File**, select `project.sql` from the project folder
6. Click **Go** to import the database

### 4. Run the Application
1. Start XAMPP and make sure **Apache** and **MySQL** services are running
2. Open your browser and go to:
http://localhost/project/

You should now see the cyber crime motives dashboard.
