# Table Of Content
1. [Overview](#overview)
2. [Software Requirement](#software-requirements)
	1. Functional Requirements
		1. User Account Management
		2. Search
		3. Search List
		4. Personal List
		5. Search Result
	2. Non-Functional Requirements
		1. Security
		2. Performance
		3. Compatibility
		4. Reliability
		5. Usability
3. [Change Management Plan](#change-management-plan)
4. [Traceability Links](#traceability-links)
	1. Use Case Diagram Traceability
	2. Class Diagram Traceability
	3. Activity Diagram Traceability
5. [Software Artifacts](#software-artifacts)

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

# Non-Functional Requirements


### Security Handling

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR1 | The user shall only be able to login with correct credentials | 
| NFR2 | The user’s personal data such as book list shall not be accessible by other users| 
| NFR3 | The web application should have good security against SQL injection by using input validation and parameterized queries | 
| NFR4 | The user password shall not be visible during login process| 
| NFR5 | The application should not share sensitive data over GET methods | 
	
### Web Performance

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR6 | The home page shall load within 30 seconds | 
| NFR7 | The website should finish loading single page no later than 30 seconds | 
| NFR8 | The results of the book shall be within 30 seconds | 
| NFR9 | The website shall return the search results in 1 seconds | 
| NFR10 | The website should limit on the display of results for the page to be scrollable| 

	
### Web Compatibility

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR11 | The web application shall run on the latest version of Chrome and Morzilla | 
| NFR12 | The system should also operate in other form of devices such as mobile or tablet | 
| NFR13 | All javascript functionality should be compatible with the latest version of Chrome and Morzilla | 
| NFR14 | The images and icons should be compatible hence rendered in the latest version of Chrome and Morzilla | 
| NFR15 | The font used in the application should be compatible in the latest version of Chrome and Morzilla  | 

### Reliability

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR16 | The application shall provide book results 98% of the time| 
| NFR17 | The application should provide users with information incase of a failure of action| 
| NFR18 | The application shall derive it’s data from an authenticated source| 
| NFR19 | The application shall perform one level of server side validation to prevent failure of actions | 
| NFR20 | The application should not store incorrect or half correct values while saving data even in cases of external system failure | 

### Usability

| ID  | Requirement | 
| :-------------: | :----------: | 
| NFR21 | The application should have readable text ranging from 12px font size and above | 
| NFR22 | The application shall use different button color such as green or blue to indicate different activities| 
| NFR23 | The application shall provide users with subtle information regarding how to use the application. For example: Usage of placeholder to indicate what to type.| 
| NFR24 | The application shall not use contrasting color combination to negatively impact visually sensitive audience| 
| NFR25 | The application should use icons or images to aid the understandability of the user | 


# Change management plan  

Our Open Library book search web application was inspired by the way technology has evolved and many students would prefer to stay in their dorms or room rather than working distance to go to sourcebooks to read, we created a platform for the open library system to solve the problem of the cost of books and resources among readers who are interested in reading. We are planning to introduce to the school library staff and submit a change request to the school board members. 
First, we are planning to do a Beta testing with 100 random selected freshmen college students, we will introduce this web application to them, and half of the pool will use a regular method, go to the library and find the physical hard copy of the book. The rest will use apply our book search application and get books. After a period of utilizing experience, we will make two groups of student exchange their searching book method and continue for a amount of time. Finally, we will send a questionnaire to the students and evaluate which method is better. 
With given feedbacks, we will submit the test results to the board members and integrate to the library system, since we have access to the server side. A maintenance team will keep watching for system failures, so any system wide malfunction will be caught and fixed immediately. 



# Traceability Links  

In this section, we will show the links between all artifacts and requirements.


## Use Case Diagram Traceability  

| Artifact ID  | Artifact Name | Requirement ID | 
| :-------------: | :----------: | :----------: | 
| UseCase1 | Sign in the account | FR1,NFR1 | 
| UseCase2 | Create an account | FR2,FR3,FR5 |   
| UseCase3 | Log out | FR4 | 
| UseCase4 | Store user information | TBD | 
| UseCase5 | Search by keywords | FR6,FR7,FR10 | 
| UseCase6 | Return the list | FR11 | 
| UseCase7 | Display the list of books | FR11,FR12,FR13,FR14,FR15,FR16,FR17 | 
| UseCase8 | Pick the result | FR23 | 
| UseCase9 | Display the book details | FR24,FR25 | 
| UseCase10 | Return the book details | TBD | 
| UseCase11 | Preview the book | FR27 | 
| UseCase12 | Display user reviews | FR26 | 
| UseCase13 | Change preview settings | FR28,FR29 | 
| UseCase14 | Create a list | FR18 | 
| UseCase15 | Save a list | TBD | 
| UseCase16 | Write a review | FR22,FR19 | 
| UseCase17 | Delete a review | FR20 | 

## Class Diagram Traceability  

| Artifact Name | Requirement ID | 
| :-------------: |:----------: | 
| User | NF1-5 | 
| UserBookList | FR18 |   
| BookWrapper | FR11-17  |  
| Review |  FR23,FR27 |  
| API | TBD  |  

## Activity Diagram Traceability  

| Artifact ID  | Artifact Name | Requirement ID | 
| :-------------: | :----------: | :----------: | 
| [activity diagram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/Activitydiagram/activity_diagram.png) | FR1-23, NFR2 | 


# Software Artifacts  

This section direct the link to the artifacts we made for this project

* [Use Case Diagram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/UseCaseDiagram/Use_case.pdf)
* [Class Diagram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/ClassDiagram/classDiagram.png)
* [Activity Diagram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/Activitydiagram/activity_diagram.png)
* [Gantt Chart](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/GanttChart/Ganttchart.pdf)
* [Search Sequence Dragram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/SequenceDiagram/search_sequence.png)
* [bookdetail Sequence Dragram](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/SequenceDiagram/sequence_diagram_bookdetail.png)
* [Database Table](https://github.com/TinyZhen/CIS641-Project-Team-Algorithm/tree/master/artifacts/Database%20%20Table)