# Table Of Content
1. Overview
2. Functional Requirements
	1. User Account Management
	2. Search Function
	3. Search Handling
	4. Personal List
3. Non-Functional Requirements
	1. Security Handling
	2. Web Performance
	3. Web Compatibility

# 1. Overview

The purpose of this document is to lay out a plan for the development of the "Open Library" open source book searching webapp by Team Algorithm
The intend readers of this document are current developers for "Open Library" and the sponsor(Instructor) of this project.In this document, it will cover the Functional and Non-Functional requirements of this Porject.

# 2. Functional Requirements

1. User account Management
	1. The system shall have a login page for users 
	2. The user shall be able to create an account 
    3. User shall create an account by clicking create button
    4. User shall retrieve the account by clicking retrieve the account 

2. Search Function
	1. The web application shall allow the user to search for the book
	2. User shall type in the search bar to search
	3. The system shall be integrated with an open source API
	
3. Search Handling
	1. User shall get a list of books if results found
	2. The web application shall let users read books online
	
	
4. Personal List
	1. The user shall be able to create a personal list of books
	2. The user shall be able to give reviews and ratings when logged in
	3. Only the admin and the user who gives a comment or rating shall have the privilege of removing or editing the comments.

# 3. Non-Functional Requirements
1. Security Handling
	1. The Password will be saved by MD5 standard
	2. Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password
	3. The web application should have good security against SQL injection by using input validation and parameterized queries
	
2. Web Performance
	1. The home page shall load within 30 seconds
	2. The website should finish loading single page no later than 10 seconds.
	3. The results of the book shall be within 30 seconds
	4. The website shall return the search results in 1 seconds.
	5. Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password
	6. The system shall return list of search contents in less than a minute
	7. The system shall be user-friendly and provide GUI
	
3. Web Compatibility
	1. The web application shall run on the latest version of Chrome and Morzilla
	2. The system shall be easy to maintain 
	3. The systems shall be able to support an extended number of users.
