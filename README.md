# Sclera Photo Gear List Engine 

![Powered by CB](https://github.com/merchp/sclera/blob/bf3ad0b4723723f7e08ee73ac7834dc176aa2f56/Powered%20by%20CB%5B169%5D.png) [![Build Status](https://travis-ci.com/merchp/sclera.svg?branch=master)](https://travis-ci.com/github/merchp/sclera)

&nbsp;
# Table of Contents

1. **[Features](#Features)** 
2. **[Tech](#Tech)**
3. **[Requirements](Requirements)**
4. **[Test Table](Test-Table)**
5. **[Database Diagram](#Database-Diagram)**
6. **[Wire Flow](#WireflowDraft)**
7. **[Sample Mobile App Images](#SampleMobileAppImages)**

&nbsp;
## Description
 
*Sclera is a photography gear recommendation engine for aspiring or experienced photographers.* Start a survey, answer some very penetrating questions about your passions and preferences, find your niche & get a custom list of gear that you can take out and cature your world, your way.  

&nbsp;

> This project is a work in progress, so don't be mad if I change stuff randomly!

&nbsp;
## Features 


- Downloadable Personalized Photography gear list
- Personalized Niche Generator
- Recommended Courses

&nbsp;
## Tech

Sclera uses a number of open source projects to work properly:

- HTML
- CSS
- React (JavaScript)
- Blazor, Razor, Xamarin (C#)
- TSQL


&nbsp;
## Requirements

###  User Story
As a photographer, I wanted to create a website that could link people’s existing passions with photography and guide them to a solution that fits within their lifestyle, budget and level of knowledge. Therefore, the Sclera recommendation engine which takes a survey of the user’s lifestyle, budget and level of knowledge and generates a visual recommendation for them to pursue their dream in photography.

### Use Case Scenario 

Given a new user, the user will be directed to a sign-in page where they will be able to sign in to the engine. When they sign up they will be able to start a survey. Then after completing the survey a visual recommendation of their photography niche and gear list will be generated.

&nbsp;
### Use-Case Diagram (UML)

![sclera Use-Case Diagram](https://github.com/merchp/sclera/blob/3d5898ab8de35b4d9d39e15b7ddcc8f6549bf8f3/UML.png)

&nbsp;
### Requirements 

1. The user will opt to sign up for an account on Sclera.
- The user will be asked to create an email, username, and password.
- The user can opt in using Facebook, Twitter, Pinterest or LinkedIn
- Once created, the user will verify their account credentials via verification email sent to their designated inbox.
- Once verified they can edit their profile.

2.	The user can then opt-in to take an assessment/survey.
- The questions they answer will be logged and saved.
- Once saved the user can generate their recommendation.
- The engine will deliver the user’s niche  & gear list recommendation based on the survey results

&nbsp;
## Test Table

| Test ID | Requirement ID | Test Procedure | Current Status | TimeStamp | Build/Version |
|---------|----------------|----------------|----------------|-----------|---------------|
| 1       | 1			     | Integration Testing  | Not Tested     | 00-00-0000 | 0.1          |
| 2       | 1.2			   | Integration Testing  | Not Tested     | 00-00-0000 | 0.1          |
| 3       | 1.3			   | Integration Testing  | Not Tested     | 00-00-0000 | 0.1          |
| 4       | 1.3.1		  | Unit Test            | Not Tested     | 00-00-0000 | 0.1          |
| 5       | 1.4			   | Unit Test/Manual verification         | Not Tested     | 00-00-0000 | 0.1 |
| 6       | 1.4.1			 | Integration Testing  | Not Tested     | 00-00-0000 | 0.1 |
| 7       | 1.4.2			 | Unit Test/Manual verification         | Not Tested     | 00-00-0000 | 0.1          |
| 8       | 2		      | Unit Test            | Not Tested     | 00-00-0000 | 0.1     |
| 9       | 2.1		    | Unit Test            | Not Tested     | 00-00-0000 | 0.1          |
| 10      | 2.1.1		  | System Test          | Not Tested     | 00-00-0000 | 0.1          |
| 11      | 2.1.2	   | Unit Test/Manual verification | Not Tested     | 00-00-0000 | 0.1|
| 12      | 2.1.3	   | Unit Test/Manual verification | Not Tested     | 00-00-0000 | 0.1|
| 13      | 3	       | Unit Test/Manual verification | Not Tested     | 00-00-0000 | 0.1|
| 14      | 3.1	     | System Test          | Not Tested     | 00-00-0000 | 0.1|



&nbsp;
## Database Diagram

![sclera database diagram](https://user-images.githubusercontent.com/46344252/108671946-1cadca00-7496-11eb-9973-67024e2a6691.JPG)

&nbsp;
## Wireflow Draft
Here's the first implementation of the apps nooks & crannies.

&nbsp;
![Sclera Wireflow](https://user-images.githubusercontent.com/46344252/108671452-53371500-7495-11eb-9764-6737901b3530.png)

# Sample Mobile App Mockups
<img src="https://github.com/merchp/sclera/blob/eb734656a39012409a2206eb34142496a5a34d0b/rf%2015-35mm%20product%20page%20-%20mobile.jpg" width="100" height="100"/>
<img src="https://github.com/merchp/sclera/blob/eb734656a39012409a2206eb34142496a5a34d0b/r%20pics%20-%20mobile.jpg" width="100" height="100"/>
<img src="https://github.com/merchp/sclera/blob/eb734656a39012409a2206eb34142496a5a34d0b/r%20bop%20page%20-%20mobile.jpg" width="100" height="100"/>


