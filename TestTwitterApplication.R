#reference Web site: http://www.karada-good.net/analyticsr/r-57/

#if you have not installed these packages below,
#then remove "#" and install your necessities.
#install.packages(c("rjson", "bit64", "httr"))
#install.packages(twitteR)
#install.packages("ROAuth")

library("twitteR")
#thses 3 are needed to prevent the error "Not found object OAuthFactory"
require(twitteR)
library(ROAuth)
require(RCurl)

#enter some information 
consumerKey <- "Enter Consumer Key (API Key)"# this should be your unique consumerKey you get from your application details.
consumerSecret <- "Enter Consumer Secret(API Secret)"#this should be unique too
#prepare for the task 
twitCred <- OAuthFactory$new(consumerKey = consumerKey,
							 consumerSecret = consumerSecret,
							 requestURL = "https://api.twitter.com/oauth/request_token",
							 accessURL = "https://api.twitter.com/oauth/access_token",
							 authURL = "http://api.twitter.com/oauth/authorize")
#run authorization 
twitCred$handshake()
#in scuess, it automatically open web page that ask connecitibity of your account and the application.
#click, yes to get PIN.
#To enable the connection, please direct your web browser to: 
#https://api.twitter.com/oauth/authorize?oauth_token=FmwinnEROsn94V9qiKuZO2yqLynrVqjA
#When complete, record the PIN given to you and provide it here:**********

#since registerTwitterOAuth(twitCred) is no longer in use,
#try to use:
setup_twitter_oauth(consumerKey,consumerSecret)

