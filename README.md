Original App Design Project - README Template
===

# SocialGPT

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

[SocialGPT is an app that brings ChatGPT to iOS natively. It give you the functionality of the ChatGPT in a portable format and at your fingertips. SocialGPT look to grow in features that would allow users to connect with their friends and colleages by searching up their username.SocialGPT's future interation will allow users to share their query history with their contacts]

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:**
- [Productivity]
- **Mobile:**
- [SocialGPT accesses you contact list friend who could be using the app, real-time response from the chatGPT api,option for up to date with GPT 4 access, etc]
- **Story:** 
[ChatGPT has revolutionized internet search. Although mobile versions of chatGPT exist none allow you to have a friends list to send your query history directly to friends and college. SocialGPT aim at minimizing the amount of time spent searching by helping user exchange queries that will other users get to the information they want faster]
- **Market:** 
[The app is aimed at people who want to optimize there life with a personal assistant and people who are often in need of data on the spot as well as research who often need to collaborate on work.
SocialGPT also helps to reduce the amount of queries needed and also the amount token for OpenAI through allowing you to search their queries.]
- **Habit:** 
[This app will more so be replacing the common act of searching through a search engine with searching on chatgpt. It will foster collaboration and sharing of information that can be relavant to others, this will foreseable decrease querying time.]
- **Scope:**
[The app is mildy complex. It makes call you the OpenAI API and used Firebase for a cloud computing back end to manage the queries.
SocialGPT is being released in MVP form, it will contain the main querying function allowing users to use chatGPT on the go, a future updat will have the ability to view in your contact is using the app.
The goal for the app is clear, chatgpt on web browser currently allows user to sent a link to others but requires users to manually copy and paste to send to other users. SocialGPT aims to make this process easier by integraiting a contacts list. In the future I'll be adding a search feature that would allow connect user to input a search item on a serperate screen. The search will then highlight matching terms on shared queries.]

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [SocialGPT helps us search content from what our friend and colleages already looked up. Often times when you're in a group of people who interact often you end up search the same things, no need to do it twice...]
* ...

**Optional Nice-to-have Stories**

* [fill in your required user stories here]
* ...

### 2. Screen Archetypes

- [X] [Login/Registration Screen:]
* [The screen promopts user to create their user using an email. If the user enters an email that is assocaited with an account, the screen will prompt for a password as well.]
* ...
- [X] [Search Screen:]
* [This is the screen where users interact with ChatGPT3.5 or ChatGPT4.0, with SocialGPT the power of OpenAi as right at your fingertips.]
* ...
- [X] [List/Feed Screen:]
* [This screen displays the list of various chat threads the user has had with ChatGPT.]
* ...



### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [GPT 3.5 Turbo/GPT 4]
* [Chat list view]
* [fill out your third tab]

**Flow Navigation** (Screen to Screen)

- [X] [Authentification: **Login/Create User**]
* [=> Chat List Screen]
* ...
- [X] [Chat List Screen: **Profile Icon**]
* [=> API Input Screen]
* ...
- [X] [Chat List Screen: **Pen**]
* [=> ChatGPT Querying Screen]
* ...
- [X] [GPT Querying Screen: **< Chats**]
* [=> ChatGPT Querying Screen]


## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="https://github.com/Hevander27/ios_capstone/blob/SocialGPT/SocialGPT_WireFrame.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[
| ID | Name      | Email            | Password        | API Key                      |
|----|-----------|------------------|-----------------|------------------------------|
| 1  | John      | john@example.com | hashed_password | abcdefghijklmnopqrstuvwxyz   |
| 2  | Jane      | jane@example.com | hashed_password | sk-wrX3qq9IbEI3FvZu3SjWT3B   |
| 3  | Bob       | bob@example.com  | hashed_password | qwertyuiopasdfghjklzxcvbnm   |

| ID | UserID | ThreadID | Query             |
|----|--------|----------|-------------------|
| 1  | 1      | 101      | Query 1           |
| 2  | 1      | 101      | Query 2           |
| 3  | 1      | 102      | Query 3           |
| 4  | 2      | 103      | Query 4           |
| 5  | 2      | 103      | Query 5           |
| 6  | 3      | 104      | Query 6           |

]

### Networking

- [ChatGPT Querying Screen => Firebase,OpenAI, Login/Create User => Firebase, Profile View => OpenAI ]
- [ db.collection("chats").document(chatId).getDocument(as: AppChat.self),
-   db.collection("chats").document(chatId).collection("messages").getDocuments,
-   db.collection("chats").document(chatId).updateData(["model": selectedModel.rawValue]),
-   db.collection("users").whereField("email", isEqualTo: email).getDocuments(),
-   Auth.auth().signIn(withEmail: email, password: password),
-   authService.login(email: emailText, password: passwordText, userExisits: userExists),
-   authService.checkUserExists(email: emailText)]
  
- [db.collection("chats").document(chatId).collection("messages").addDocument(from: message)]
