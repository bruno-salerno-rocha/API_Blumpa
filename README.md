# README

This project is a simple rails 6.0.2.1 API that returns the date of the first appearance of a Rick and Morty character based on the Rick and Morty API and it respectives ids.

## Usage

To run it, first make sure you have rails 6.0.2.1 installed. Next you can run 'bundle install' to set up all the gems and then simply execute 'rails server -p 3000'. It will initiate the server on the provided port (in this case, the 3000 port).

From localhost, you can make a GET request to "localhost:3000/aired_dates/#{id}". Being the '#{id}' the id from any character present at the [Rick and Morty API](https://rickandmortyapi.com/)

The response should be a JSON like this one:

    {
     aired_date: "December 2, 2013"
    }
