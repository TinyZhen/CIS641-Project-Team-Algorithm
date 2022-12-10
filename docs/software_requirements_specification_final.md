# Table Of Content
1. Overview
2. Software Requirement
	1. Functional Requirements
		1. User Account Management
		2. Search
		3. Search List
		4. Personal List
		5. Search Result
	2. Non-Functional Requirements
		1. Security Handling
		2. Web Performance
		3. Web Compatibility
		4.
		5.
3. Change Management Plan
4. Traceability Links
	1. Use Case Diagram Traceability
	2. Class Diagram Traceability
	3. Activity Diagram Traceability
5. Software Artifacts

# Overview

The purpose of this document is to lay out a plan for the development of the "Open Library" open source book searching web app by Team Algorithm
The intended readers of this document are current developers for "Open Library" and the sponsor(Instructor) of this project.
In this document, it will cover the software requirements of this Project, which include are functional and nonfunctional requirements, this document also include change management plan, traceability matrix and links to software artifacts


# Software Requirements

In this section we will introdue the functional and nonfunctional requirements of our project, each of them contains 5 categories.

## Functional Requirements

### User account Management  

| ID  | Requirement | 
| :-------------: | :----------: | 
| FR1 | The system shall have a login page for users | 
| FR2 | The user shall be able to create an account  |
| FR3 | User shall create an account by clicking signup button |
| FR4 | User shall retrieve the account by clicking forget button | 
| FR5 | The system shall have a sign up page for users |  

### Search 

| ID  | Requirement | 
| :-------------: | :----------: | 
| FR6 | The web application shall allow the user to search for the book |
| FR7 | User shall type in the search bar to search | 
| FR8 | The system shall be integrated with the open library API | 
| FR9 | The search bar shall be in the center of the home page | 
| FR10 | User shall click search button or press enter to search | 
 
### Search List
 
| ID  | Requirement | 
| :-------------: | :----------: | 
| FR11 | User shall get a list of books if results found | 
| FR12 | The System shall display the book thumbnail if applicable | 
| FR13 | The System shall display the book title if applicable | 
| FR14 | The System shall display the name of the author if applicable | 
| FR15 | The System shall display the public date of the book if applicable | 
| FR16 | The System shall display the category of the book if applicable |
| FR17 | The System shall display the first sentence of the book if applicable |  
	
### Personal List

| ID  | Requirement | 
| :-------------: | :----------: | 
| FR18 | The user shall be able to create a personal list of books |
| FR19 | The user shall be able to give reviews when logged in | 
| FR20 | Only the user who gives a comment shall have the privilege of removing the comments | 
| FR21 | The System shall display the review from other users | 
| FR22 | The user shall type in the textfield to submit review |  

### Search result

| ID  | Requirement | 
| :-------------: | :----------: | 
| FR23 | User shall click the book details button to view book | 
| FR24 | The System shall display the enlarged book cover page if applicable | 
| FR25 | The System shall display the book description if applicable | 
| FR26 | User shall be able to click on review to see book reviews | 
| FR27 | User shall be able to click preview to preview the book | 

# 3. Non-Functional Requirements


### Security Handling

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR1 | The Password will be saved by MD5 standard | 
| NFR2 | Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password | 
| NFR3 | The web application should have good security against SQL injection by using input validation and parameterized queries | 
| NFR4 |  | 
| NFR5 |  | 
	
### Web Performance

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR6 | The home page shall load within 30 seconds | 
| NFR7 | The website should finish loading single page no later than 10 seconds | 
| NFR8 | The results of the book shall be within 30 seconds | 
| NFR9 | The website shall return the search results in 1 seconds | 
| NFR10 | Email or text message should be sent to user no later than 30 minutes after user requested retrieve the password | 

	6. The system shall return list of search contents in less than a minute
	7. The system shall be user-friendly and provide GUI
	
### Web Compatibility

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR11 | The web application shall run on the latest version of Chrome and Morzilla | 
| NFR12 | The system shall be easy to maintain | 
| NFR13 | The systems shall be able to support an extended number of users | 
| NFR14 |  | 
| NFR15 |  | 

###

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR16 |  | 
| NFR17 |  | 
| NFR18 |  | 
| NFR19 |  | 
| NFR20 |  | 

###

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR21 |  | 
| NFR22 |  | 
| NFR23 |  | 
| NFR24 |  | 
| NFR25 |  | 

# Change management plan  

<Description of what this section is>  


# Traceability Links  

<Description of this section>


## Use Case Diagram Traceability  

| Artifact ID  | Artifact Name | Requirement ID | 
| :-------------: | :----------: | :----------: | 
| UseCase1 | Move Player | FR5 | 
| … | … | … |   

## Class Diagram Traceability  

| Artifact Name | Requirement ID | 
| :-------------: |:----------: | 
| classPlayer | NFR3, FR5 | 
| … | … | … |   

## Activity Diagram Traceability  

<In this case, it makes more sense (I think, feel free to disagree) to link to the file and to those requirements impacted>  

| Artifact ID  | Artifact Name | Requirement ID | 
| :-------------: | :----------: | :----------: | 
| <filename> | Handle Player Input | FR1-5, NFR2 | 
| … | … | … |   

# Software Artifacts  

<Describe the purpose of this section>  

* [I am a link](to_some_file.pdf)

