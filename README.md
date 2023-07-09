# Active Storage File Upload

This is a Rails project that demonstrates file upload functionality using Active Storage. It allows users to upload and manage files. In production environment the uploaded images are stored in cloud! ⛅ (AWS s3).

## Prerequisites

Before cloning this repository, please ensure that you have the following installed on your local machine:

- Ruby > 3
- Rails > 7

## Installation

To get started with the project, follow these steps:

1. Clone the repository:

        ```bash
        git clone git@github.com:iak97/active-storage-file-upload.git
        ```

2. Change into the project directory:

       ```bash
       cd active-storage-file-upload
       ```

3. Install the required gems:

      ```bash
      bundle install
      ```

4. Edit the `config/database.yml` file with your database credentials.

5. Create the database and run the migrations:

      ```bash
      rails db:create db:migrate
      ```

6. Start the Rails server:

      ```bash
      rails s
      ```

7. You can now access the site in your web browser at [http://localhost:3000](http://localhost:3000).

## Note

    If you encounter any issues please let me know.

    Give a ⭐️ if you like this project!!!