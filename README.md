# charts apps 

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

## Test aplication

### Pie Chart
* Pie chart is based on total seales on different different region

### Bar Chart
* A bar chart is based on the quantity shipped in a 4-year ship date 

### Composite bar chart
* A bar chart is based on the profit and sales in a 4-year ship date 

### Time Chart 
* A time chart is based on profit in a 4-year ship date 

## Build app (apk) for distribution in Google Play

### Step's to ready app for publish on play store

* Generate release-key store file 

you create a keystore with the Java Keytool utility that comes with any standard JDK distribution and can be located at %JAVA_HOME%\bin. On Windows this would usually be C:\Program Files\Java\jre7\bin.

On Windows, open a command window and switch to that directory. On Linux type OS do the same with a terminal. Then run:
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

Keytool prompts you to provide passwords for the keystore, provide the Distinguished Name fields and then the password for your key. It then generates the keystore as a file called my-release-key.keystore in the directory you're in. The keystore and key are protected by the passwords you entered. The keystore contains a single key, valid for 10000 days. The alias_name is a name that you — will use later, to refer to this keystore when signing your application.

* Create key.properties file

In android main root folder their have to create a file name  key.properties file with this 

storePassword=********

keyPassword=*********

keyAlias=key

storeFile=your key.jks file path

* build.graddle file 

In app levell Build.graddle file we have to change buildTypes and add signingConfigs

     signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword keystoreProperties['storePassword']
        }
    }
     buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig signingConfigs.release
        }
    }
  
 * Build app bundle or apk for publish 
 
 In android studio on app bar their is a button build their is flutter option click on that and create your app bundle or apk 
 
### Step's to publish aap on play store  

* Google Play Developer Console

In order to upload an Android play store app, a developer dashboard is imperative. Google Play console is kind of a backend controlling center, from where developers submit Play Store apps for Android. There is a one-time fee of $25 by which a developer can open an account, loaded with functions and control features. After paying this one-time fee, you can submit apps to Google Play Store for free.

You need to fill out all the credentials asked while creating the account, such as your name, country and more. Once you submit your account it will take upto 48 hours to get approved.

* Link Developer Account with Google Wallet Merchant Account

If the app getting uploaded to Play Store supports in-app purchases, then you will need a merchant account. To create one you can sign in to your Google Play Console account and click on ‘Reports’ followed by ‘Financial Reports’ option. After this, you may select the ‘Set up a merchant account now’ option and simply fill out your details. 

The merchant account will automatically get linked to your Google Play Console account and will allow you to manage and examine app sales.

* Create Application

This is yet another step towards how to submit an app to Google play store. 

Once you are logged into your developer or publisher account, here are a few steps you need to take to publish app to google play:

1 In the menu, go to the ‘All applications’ tab

2 You will see an option ‘Create Application’ – select it

3 From the drop-down menu, choose the application’s default language

4 Enter your application’s title (it can be changed later)

5 Now, click on “Create”

* App Store Listing

It is at this point of Google Play uploads, your preparations will come handy.

In this step around how to upload an app to the play store, you are required to fill out all the information and details you have already prepared with caution before. The table below shows what information you need to fill in the app listing

Make sure to use appropriate keywords in your "app description" to increase the chances of your app showing up in searches. Along with this, make sure to use all the data we have talked about in the prerequisite section for app listing.

* Upload App Bundles or APK To Google Play

Now, you are required to use the files such as App bundle or APK and signed app release and upload them into your application. This is how you do it: Navigate to the ‘Release Management’ and then ‘App Release’ tab in the menu. After this, you will be asked to choose any one type of release from four options- internal test, close test, production release, and an open test. 

Once, you have made a decision regarding which type of release you want, you may select ‘Create Release’. 

At this point, you will be redirected to the New release to the production page. Here, you are again required to make another decision- to opt for Google Play apps store signing on the app or not. If you choose the latter, then simply click on the ‘OPT-OUT’ option.

Now, select ‘Browse files’ and then look into how to upload apk to google apps store while naming and describing your release through on-screen instructions. You can also click on ‘Review’ to confirm the information. When everything is taken care of, press ‘Save’.

* Time For Content Rating

The next step regarding how to publish Android apps on the Play Store is to rate your app. This is crucial because it is listed as ‘Unrated’, it might get removed altogether from the store, so it is imperative to rate the application.

For Content Rating, you must again navigate to the menu on the left side of the screen and then select the same. By clicking on ‘Continue’ you can move forward and then type your email address in the respective field and then ‘Confirm’ it.

Now, you may fill the questionnaire for your app rating. Follow this by selecting the ‘Save Questionnaire’ and then choose the ‘Calculate Rating’ option to see your app rating on the Play Store. The last thing to finalize your app’s content rating is to click on ‘Apply’.

* Fix App Pricing and Distribution

Now, you have to be clear about what countries your app is going to be available in. The point to note here is that Google doesn’t support publishing an app for all regions. The app will be published in selected countries instead of world-wide.

Moreover, assigning a price to your app is crucial. If you want your app to be free, make sure that this decision is permanent, as Google does not allow you to convert free apps into paid ones. Although, the price of the app can be altered. 

To do all this, go to the Pricing and Distribution tab in the menu, and then make a choice whether your app is going to be Free or Paid. You may now select the countries you want your app to be released. Additionally, if your application is suited for children under the age of 13, you may select the option of ‘Yes’ for Primary Child-Detected. If otherwise is the case, simply select ‘No’. Similarly, select the options for allowing ads into your application.

*  Finally, Publish the Application

Once you are confirmed about everything being correct, take the last step of this guide on how to upload android app to Play Store, i.e, add the application to the platform. You need to go back to the ‘App Releases’ tab and then select ‘Manage Production’ followed by ‘Edit Release’. After this, click on ‘Review’ and then choose ‘Start rollout to production’ option. To bring this process to an end select the ‘Confirm’ option and Voila! You have successfully uploaded the app to the Google Play Store apk account for free.

Once you upload app to google play store free, all there is left to do now is to just wait for your application to get approved. It generally took about two hours for your application to get reviewed. But with apps store Google Play’s updated privacy policy, it will now take hours and even days for the same, encouraging mobile app development companies to create even more flawless applications that get selected instantly. So, hold your excitement in the place and just wait.

