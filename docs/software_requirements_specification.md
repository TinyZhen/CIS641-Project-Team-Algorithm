# Overview

The purpose of this document is to lay out a plan for the development of the "Open Library" open source book searching webapp by Team Algorithm
The intend readers of this document are current developers for "Open Library" and the sponsor(Instructor) of this project.In this document, it will cover the Functional and Non-Functional requirements of this Porject.

# Functional Requirements

1. User account Management
	1. The user shall be able to create an account 
    2. User shall create an account by clicking create button
    3. User shall retrieve the account by clicking retrieve the account 

2. Search For books
	1. The web application shall allow the user to search for the book
	2. User shall type in the search bar to search
	
3. Book reviews
	1. User shall get a list of books if results found
	2. The web application shall let users read books online
	
	
4. Personal List
	1. The user shall be able to create a personal list of books

# Non-Functional Requirements
1. Web Application Security handling
	1. The Password will be saved by MD5 standard
	2. Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password
	3. The web application should have good security against SQL injection by using input validation and parameterized queries
	
2. Web Application performance
	1. The home page shall load within 30 seconds
	2. The website should finish loading single page no later than 10 seconds.
	3. The results of the book shall be within 30 seconds
	4. The website shall return the search results in 1 seconds.
	5. Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password
	
3. Web Application compatibility
	1. The web application shall run on the latest version of Chrome and Morzilla
	