# Qube-health
Qube-Health Assessment


This Assessent of Qube Health consists of UI Development, state management(Using GetX) and APi call,

Structure of application is done as from clean Architecture (an extendend implementation of MVVC architechure) to maintain the code quality redability reuseability and pattern Structure.

The Apis and contract provided for APi was replying with the response as {Unauthoried access}. because of that Implementation of that is done in the code base but data from API is not been utilized also in the application the Mapping Screen was a bit of a confusion how screens to be mapped to most of the data is kept hardcoded.

The State Management Technique utilized here is GetX (As mentioned in the assessment). In GetX architechure it clears the way and make the application light in terms of performances. Since APi's were not accessible it was not suitable to utilize GetX architechture in API call, so for the reuirement I have utilized GetX in Route management. and additionally implemented functionality of calling YouTube Video in application with updating Url as you tap of different video playList Card. 

Apart for asked requirement to make it a little interactive I have added a intermediate additional Screen with a button on Tap of which it takes you to the assessmment Screen.

Code base is there in qube_health folder in repository and apk is also present out side. Code was code with keeping in mind to make the code clean and readable. However using a harcoded values at several places which can be replaced with initializing earlier with const. and help in optimizing runtime.

please Have a review on the application(ScreenShots attached) and code.