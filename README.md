<h1 align="center"> DoD Talent Management App and Dashboard </h1>

## Description
This package contains a CRM Analytics (CRMA) app template which can be used to create a talent management dashboard, complete with the datasets.

## Summary
The DoD Talent Management Dashboard provides comprehensive HCM-focused analytics across three areas: workforce availability, workforce planning, and performance and pay management. Dynamic charts summarize key metrics in an intuitive and insightful manner, enabling users to drill down into the data, identify trends and gaps, and take action without leaving the dashboard. The dashboard leverages sample data to help your organization imagine how you can leverage CRMA to meet your talent management analytic needs. 

## Disclaimer
Installation and use of this package is at your own risk. Please consult your organization’s rules and regulations before proceeding.

## Installation & Setup
- Before getting started, ensure that you have CRMA enabled in your org and that you’ve assigned the appropriate permission sets for the users who will be using the app template. You can access a Salesforce help article for setting up CRMA via the following link: https://help.salesforce.com/s/articleView?id=sf.bi_help_setup_basic.htm&type=5 
- Once CRMA is set up in your org, use the following URL to install the package, which contains an app template with the corresponding datasets. Pasting the link into your web browser will bring up a Salesforce login screen. Log into the org that you’d like the app template to be installed into.
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t8V000001dd0S 

![1](/images/1.png)
- After logging in, choose the profiles that you’d like to have access to the app template. Select “Rename Conflicting Components in Package” to prevent an installation failure in the unlikely event that you have existing components in your org with the same name as the installed components.

![2](/images/2.png)
![3](/images/3.png)
![4](/images/4.png)
- Your Admin should receive an email upon successful installation of the app template. Additionally, you can verify the installation by accessing Installed Packages from the setup menu in your Salesforce org. Select the “Talent Management Dashboard Template” package and click the “View Components” button. You should see one component, “Talent_Management_Template”.
- To use the template to build the talent management app with dashboard, access Analytics Studio from the App Launcher. Click the “Create” button in the upper right corner of the screen and select “App”. 

![5](/images/5.png)
- Scroll down and select the “Talent Management Template” tile and click the “Continue” button on this screen and the following screen. 

![6](/images/6.png)
- Name your app and select a log level in case you experience any issues with app creation. Click the “Create” button. 

![7](/images/7.png)
- A status page will appear, enabling you to monitor the progress of app creation.

![8](/images/8.png)
- Once creation is complete, click the “Open” button in the upper right corner of the screen.

![9](/images/9.png)
- You’ll be taken to the new app and can access the dashboard and its three datasets.

![10](/images/10.png)
- Open the dashboard and begin exploring the sample data!

![11](/images/11.png)

## Maintainer
David Nava, Lead Solution Engineer at Salesforce, dnava@salesforce.com

## Current Version
1.2
