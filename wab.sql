CREATE TABLE IF NOT EXISTS `whatconvos` (
                `id` int(10) NOT NULL,
                `input` varchar(10000) DEFAULT NULL,
                `reply` varchar(10000) DEFAULT NULL,
                `timestamp` int(11) DEFAULT NULL,
                `fromNumber` int(11) DEFAULT NULL,
                `toNumber` int(11) DEFAULT NULL,
                primary key (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  `users` (
                `id` int(10) NOT NULL,
                `name` varchar(100) DEFAULT NULL,
                `email` varchar(100) DEFAULT NULL,
                `password` varchar(100) DEFAULT NULL,
                `phone` varchar(100) DEFAULT NULL,
                `lastLogin` int(11) DEFAULT NULL,
                `lastIP` varchar(100) DEFAULT NULL,
                `lastUserAgent` varchar(100) DEFAULT NULL,
                `lastLocation` varchar(100) DEFAULT NULL,
                `lastLocationLat` varchar(100) DEFAULT NULL,
                `lastLocationLong` varchar(100) DEFAULT NULL,
                `lastLocationCity` varchar(100) DEFAULT NULL,
                `lastLocationState` varchar(100) DEFAULT NULL,
                `lastLocationCountry` varchar(100) DEFAULT NULL,
                `lastLocationZip` varchar(100) DEFAULT NULL,
                `lastLocationTimezone` varchar(100) DEFAULT NULL,
                `lastLocationISP` varchar(100) DEFAULT NULL,
                `lastLocationOrg` varchar(100) DEFAULT NULL,
                `lastLocationAS` varchar(100) DEFAULT NULL,
                `lastLocationQuery` varchar(100) DEFAULT NULL,
                `lastLocationStatus` varchar(100) DEFAULT NULL,
                `lastLocationMessage` varchar(100) DEFAULT NULL,
                `lastLocationContinent` varchar(100) DEFAULT NULL,
                `lastLocationRegion` varchar(100) DEFAULT NULL,
                `lastLocationRegionName` varchar(100) DEFAULT NULL,
                `lastLocationCurrency` varchar(100) DEFAULT NULL,
                `lastLocationCallingCode` varchar(100) DEFAULT NULL,
                `lastLocationFlag` varchar(100) DEFAULT NULL,
                `lastLocationEmojiFlag` varchar(100) DEFAULT NULL,
                `lastLocationEmojiUnicode` varchar(100) DEFAULT NULL,
                `lastLocationLanguages` varchar(100) DEFAULT NULL,
                `lastLocationCountryCode` varchar(100) DEFAULT NULL,
                `lastLocationCountryCode3` varchar(100) DEFAULT NULL,
                `lastLocationCapital` varchar(100) DEFAULT NULL,
                `lastLocationNeighbours` varchar(100) DEFAULT NULL,
                `lastLocationArea` varchar(100) DEFAULT NULL,
                `lastLocationPopulation` varchar(100) DEFAULT NULL,
                `lastLocationLatitude` varchar(100) Default NULL,
                `lastLocationLongitude` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneId` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneName` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneDstOffset` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneGmtOffset` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneGmt` varchar(100) DEFAULT NULL,
                `lastLocationTimezoneCurrentTime` varchar(100) DEFAULT NULL,
                `lastLocationCurrencyCode` varchar(100) DEFAULT NULL,
                `lastLocationCurrencyName` varchar(100) DEFAULT NULL,
                `lastLocationCurrencySymbol` varchar(100) DEFAULT NULL,
                `lastLocationCurrencyRates` varchar(100) DEFAULT NULL,
                `lastLocationCurrencyConverted` varchar(100) DEFAULT NULL,
                `lastLocationCurrencyPlural` varchar(100) DEFAULT NULL,
                `lastLocationMap` varchar(100) DEFAULT NULL,
                `lastLocationMapLink` varchar(100) DEFAULT NULL,
                `lastLocationMapEmbed` varchar(100) DEFAULT NULL,
                `lastLocationMapStatic` varchar(100) DEFAULT NULL,
                `lastLocationMapStaticLink` varchar(100) DEFAULT NULL,
                `bot` varchar(100) DEFAULT NULL,
                `botID` varchar(100) DEFAULT NULL,
                `botName` varchar(100) DEFAULT NULL,
                `avatar` varchar(255) DEFAULT NULL,
              `avatarpro` varchar(300) DEFAULT NULL,
              `avataro` varchar(300) DEFAULT NULL,
              `background` varchar(255) DEFAULT NULL,
              `timestamp` int(20) DEFAULT NULL,
              `aboutme` text,
              `hometown` varchar(50) DEFAULT NULL,
              `followers` int(11) DEFAULT '0',
              `following` int(11) DEFAULT '0',
              `posts` int(11) DEFAULT '0',
              `tribes` int(11) DEFAULT '0',
              `likes` int(11) DEFAULT '0',
              `trends` varchar(70) NOT NULL DEFAULT 'Africa',
              `auth` int(2) DEFAULT '0',
              `loc` int(2) DEFAULT '0',
              `backcolor` varchar(50) DEFAULT NULL,
              `pbackcolor` varchar(50) DEFAULT NULL,
              `stats` varchar(50) DEFAULT NULL,
              `bback` varchar(50) DEFAULT NULL,
              `client` text,
              `ip` varchar(30) DEFAULT NULL,
              `twitter` varchar(56) DEFAULT NULL,
              `facebook` varchar(100) DEFAULT NULL,
              `facebook_id` int(90) DEFAULT NULL,
              `type` text,
primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bot` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`botID` varchar(100) DEFAULT NULL,
`botName` varchar(100) DEFAULT NULL,
`bot` varchar(100) DEFAULT NULL,
`botAvatar` varchar(100) DEFAULT NULL,
`botAvatarPro` varchar(100) DEFAULT NULL,
`botAvatarO` varchar(100) DEFAULT NULL,
`botBackground` varchar(100) DEFAULT NULL,
`botBackcolor` varchar(100) DEFAULT NULL,
`botPbackcolor` varchar(100) DEFAULT NULL,
`botStats` varchar(100) DEFAULT NULL,
`botBback` varchar(100) DEFAULT NULL,
`botAboutme` varchar(100) DEFAULT NULL,
`botHometown` varchar(100) DEFAULT NULL,
`botFollowers` varchar(100) DEFAULT NULL,
`botFollowing` varchar(100) DEFAULT NULL,
`botPosts` varchar(100) DEFAULT NULL,
`botTribes` varchar(100) DEFAULT NULL,
`botLikes` varchar(100) DEFAULT NULL,
`botTrends` varchar(100) DEFAULT NULL,
`botAuth` varchar(100) DEFAULT NULL,
`botLoc` varchar(100) DEFAULT NULL,
`botClient` varchar(100) DEFAULT NULL,
`botIp` varchar(100) DEFAULT NULL,
`botTwitter` varchar(100) DEFAULT NULL,
`botFacebook` varchar(100) DEFAULT NULL,
`botFacebook_id` varchar(100) DEFAULT NULL,
`botType` varchar(100) DEFAULT NULL,
`input` varchar(300) DEFAULT NULL,
`reply` varchar(300) DEFAULT NULL,
`rid` int(10) DEFAULT NULL,
`user` int(10) DEFAULT NULL,
`name` varchar(100) DEFAULT NULL,
`about` varchar(100) DEFAULT NULL,
`category` varchar(100) DEFAULT NULL,
`avatar` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botConversations` (
`convo_id` int(11) NOT NULL,
`content` text,
`message_id` int(40) DEFAULT NULL,
`viewed` int(5) DEFAULT '0',
`image` varchar(100) DEFAULT NULL,
`type` varchar(11) DEFAULT NULL,
`user_id` int(40) DEFAULT NULL,
`recepient` int(40) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`convo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botMessages` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`message_id` int(40) DEFAULT NULL,
`content` text,
`viewed` int(5) DEFAULT '0',
`image` varchar(100) DEFAULT NULL,
`type` varchar(11) DEFAULT NULL,
`user_id` int(40) DEFAULT NULL,
`recepient` int(40) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botReplies` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`input` varchar(300) DEFAULT NULL,
`reply` varchar(300) DEFAULT NULL,
`rid` int(10) DEFAULT NULL,
`user` int(10) DEFAULT NULL,
`name` varchar(100) DEFAULT NULL,
`about` varchar(100) DEFAULT NULL,
`category` varchar(100) DEFAULT NULL,
`avatar` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botUsers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user` int(10) DEFAULT NULL,
`name` varchar(100) DEFAULT NULL,
`about` varchar(100) DEFAULT NULL,
`category` varchar(100) DEFAULT NULL,
`avatar` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botCategories` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`category` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribe` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `botTribePosts` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeComments` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeReplies` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeLikes` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeDislikes` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeShares` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeFollowers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeFollowing` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeInvites` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botTribeJoinRequests` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tribe` varchar(100) DEFAULT NULL,
`bot_id` int(100) DEFAULT NULL,
`name` varchar(300) DEFAULT NULL,
`description` varchar(300) DEFAULT NULL,
`avatar` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookOauths` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`access_token` varchar(300) DEFAULT NULL,
`fuid` varchar(100) DEFAULT NULL,
`fname` varchar(40) DEFAULT NULL,
`byear` int(40) DEFAULT NULL,
`femail` varchar(15) DEFAULT NULL,
`expires` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookPages` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`page_id` varchar(300) DEFAULT NULL,
`page_name` varchar(40) DEFAULT NULL,
`page_access_token` varchar(40) DEFAULT NULL,
`page_category` varchar(15) DEFAULT NULL,
`page_fan_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookGroups` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`group_id` varchar(300) DEFAULT NULL,
`group_name` varchar(40) DEFAULT NULL,
`group_access_token` varchar(40) DEFAULT NULL,
`group_description` varchar(15) DEFAULT NULL,
`group_member_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookEvents` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`event_id` varchar(300) DEFAULT NULL,
`event_name` varchar(40) DEFAULT NULL,
`event_access_token` varchar(40) DEFAULT NULL,
`event_description` varchar(15) DEFAULT NULL,
`event_attending_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookPosts` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`post_id` varchar(300) DEFAULT NULL,
`post_message` varchar(40) DEFAULT NULL,
`post_access_token` varchar(40) DEFAULT NULL,
`post_description` varchar(15) DEFAULT NULL,
`post_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookComments` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`comment_id` varchar(300) DEFAULT NULL,
`comment_message` varchar(40) DEFAULT NULL,
`comment_access_token` varchar(40) DEFAULT NULL,
`comment_description` varchar(15) DEFAULT NULL,
`comment_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookReactions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`reaction_id` varchar(300) DEFAULT NULL,
`reaction_message` varchar(40) DEFAULT NULL,
`reaction_access_token` varchar(40) DEFAULT NULL,
`reaction_description` varchar(15) DEFAULT NULL,
`reaction_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookPhotos` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`photo_id` varchar(300) DEFAULT NULL,
`photo_message` varchar(40) DEFAULT NULL,
`photo_access_token` varchar(40) DEFAULT NULL,
`photo_description` varchar(15) DEFAULT NULL,
`photo_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookVideos` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`video_id` varchar(300) DEFAULT NULL,
`video_message` varchar(40) DEFAULT NULL,
`video_access_token` varchar(40) DEFAULT NULL,
`video_description` varchar(15) DEFAULT NULL,
`video_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookAlbums` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`album_id` varchar(300) DEFAULT NULL,
`album_message` varchar(40) DEFAULT NULL,
`album_access_token` varchar(40) DEFAULT NULL,
`album_description` varchar(15) DEFAULT NULL,
`album_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookPages` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`page_id` varchar(300) DEFAULT NULL,
`page_message` varchar(40) DEFAULT NULL,
`page_access_token` varchar(40) DEFAULT NULL,
`page_description` varchar(15) DEFAULT NULL,
`page_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `facebookFriends` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`friend_id` varchar(300) DEFAULT NULL,
`friend_message` varchar(40) DEFAULT NULL,
`friend_access_token` varchar(40) DEFAULT NULL,
`friend_description` varchar(15) DEFAULT NULL,
`friend_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterOauth` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`oauth_token` varchar(300) DEFAULT NULL,
`oauth_token_secret` varchar(40) DEFAULT NULL,
`screen_name` varchar(40) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterTweets` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`tweet_id` varchar(300) DEFAULT NULL,
`tweet_message` varchar(40) DEFAULT NULL,
`tweet_access_token` varchar(40) DEFAULT NULL,
`tweet_description` varchar(15) DEFAULT NULL,
`tweet_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterRetweets` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`retweet_id` varchar(300) DEFAULT NULL,
`retweet_message` varchar(40) DEFAULT NULL,
`retweet_access_token` varchar(40) DEFAULT NULL,
`retweet_description` varchar(15) DEFAULT NULL,
`retweet_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterLikes` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`like_id` varchar(300) DEFAULT NULL,
`like_message` varchar(40) DEFAULT NULL,
`like_access_token` varchar(40) DEFAULT NULL,
`like_description` varchar(15) DEFAULT NULL,
`like_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterFollowers` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`follower_id` varchar(300) DEFAULT NULL,
`follower_message` varchar(40) DEFAULT NULL,
`follower_access_token` varchar(40) DEFAULT NULL,
`follower_description` varchar(15) DEFAULT NULL,
`follower_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterFriends` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`friend_id` varchar(300) DEFAULT NULL,
`friend_message` varchar(40) DEFAULT NULL,
`friend_access_token` varchar(40) DEFAULT NULL,
`friend_description` varchar(15) DEFAULT NULL,
`friend_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterLists` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_id` varchar(300) DEFAULT NULL,
`list_message` varchar(40) DEFAULT NULL,
`list_access_token` varchar(40) DEFAULT NULL,
`list_description` varchar(15) DEFAULT NULL,
`list_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterListMembers` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_id` varchar(300) DEFAULT NULL,
`list_member_message` varchar(40) DEFAULT NULL,
`list_member_access_token` varchar(40) DEFAULT NULL,
`list_member_description` varchar(15) DEFAULT NULL,
`list_member_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterListSubscribers` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscriber_id` varchar(300) DEFAULT NULL,
`list_subscriber_message` varchar(40) DEFAULT NULL,
`list_subscriber_access_token` varchar(40) DEFAULT NULL,
`list_subscriber_description` varchar(15) DEFAULT NULL,
`list_subscriber_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterListOwnerships` (

    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(100) DEFAULT NULL,
    `list_ownership_id` varchar(300) DEFAULT NULL,
    `list_ownership_message` varchar(40) DEFAULT NULL,
    `list_ownership_access_token` varchar(40) DEFAULT NULL,
    `list_ownership_description` varchar(15) DEFAULT NULL,
    `list_ownership_likes_count` int(20) DEFAULT NULL,
        `timestamp` int(20) DEFAULT NULL,
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterListMemberships` (

            `id` int(11) NOT NULL AUTO_INCREMENT,
            `user_id` int(100) DEFAULT NULL,
            `list_membership_id` varchar(300) DEFAULT NULL,
            `list_membership_message` varchar(40) DEFAULT NULL,
            `list_membership_access_token` varchar(40) DEFAULT NULL,
            `list_membership_description` varchar(15) DEFAULT NULL,
            `list_membership_likes_count` int(20) DEFAULT NULL,
                `timestamp` int(20) DEFAULT NULL,
                PRIMARY KEY (`id`)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterMentions` (

                    `id` int(11) NOT NULL AUTO_INCREMENT,
                    `user_id` int(100) DEFAULT NULL,
                    `mention_id` varchar(300) DEFAULT NULL,
                    `mention_message` varchar(40) DEFAULT NULL,
                    `mention_access_token` varchar(40) DEFAULT NULL,
                    `mention_description` varchar(15) DEFAULT NULL,
                    `mention_likes_count` int(20) DEFAULT NULL,
                        `timestamp` int(20) DEFAULT NULL,
                        PRIMARY KEY (`id`)
                        ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterRetweets` (

                            `id` int(11) NOT NULL AUTO_INCREMENT,
                            `user_id` int(100) DEFAULT NULL,
                            `retweet_id` varchar(300) DEFAULT NULL,
                            `retweet_message` varchar(40) DEFAULT NULL,
                            `retweet_access_token` varchar(40) DEFAULT NULL,
                            `retweet_description` varchar(15) DEFAULT NULL,
                            `retweet_likes_count` int(20) DEFAULT NULL,
                                `timestamp` int(20) DEFAULT NULL,
                                PRIMARY KEY (`id`)
                                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterRetweetsOfMe` (

                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                    `user_id` int(100) DEFAULT NULL,
                                    `retweet_of_me_id` varchar(300) DEFAULT NULL,
                                    `retweet_of_me_message` varchar(40) DEFAULT NULL,
                                    `retweet_of_me_access_token` varchar(40) DEFAULT NULL,
                                    `retweet_of_me_description` varchar(15) DEFAULT NULL,
                                    `retweet_of_me_likes_count` int(20) DEFAULT NULL,
                                        `timestamp` int(20) DEFAULT NULL,
                                        PRIMARY KEY (`id`)
                                        ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterTweets` (

                                            `id` int(11) NOT NULL AUTO_INCREMENT,
                                            `user_id` int(100) DEFAULT NULL,
                                            `tweet_id` varchar(300) DEFAULT NULL,
                                            `tweet_message` varchar(40) DEFAULT NULL,
                                            `tweet_access_token` varchar(40) DEFAULT NULL,
                                            `tweet_description` varchar(15) DEFAULT NULL,
                                            `tweet_likes_count` int(20) DEFAULT NULL,
                                                `timestamp` int(20) DEFAULT NULL,
                                                PRIMARY KEY (`id`)
                                                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterTweetsOfMe` (

                                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                                        `user_id` int(100) DEFAULT NULL,
                                                        `tweet_of_me_id` varchar(300) DEFAULT NULL,
                                                        `tweet_of_me_message` varchar(40) DEFAULT NULL,
                                                        `tweet_of_me_access_token` varchar(40) DEFAULT NULL,
                                                        `tweet_of_me_description` varchar(15) DEFAULT NULL,
                                                        `tweet_of_me_likes_count` int(20) DEFAULT NULL,
                                                            `timestamp` int(20) DEFAULT NULL,
                                                            PRIMARY KEY (`id`)
                                                            ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUserTimeline` (

                                                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                    `user_id` int(100) DEFAULT NULL,
                                                                    `user_timeline_id` varchar(300) DEFAULT NULL,
                                                                    `user_timeline_message` varchar(40) DEFAULT NULL,
                                                                    `user_timeline_access_token` varchar(40) DEFAULT NULL,
                                                                    `user_timeline_description` varchar(15) DEFAULT NULL,
                                                                    `user_timeline_likes_count` int(20) DEFAULT NULL,
                                                                        `timestamp` int(20) DEFAULT NULL,
                                                                        PRIMARY KEY (`id`)
                                                                        ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsers` (

                                                                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                `user_id` int(100) DEFAULT NULL,
                                                                                `user_name` varchar(300) DEFAULT NULL,
                                                                                `user_screen_name` varchar(40) DEFAULT NULL,
                                                                                `user_access_token` varchar(40) DEFAULT NULL,
                                                                                `user_description` varchar(15) DEFAULT NULL,
                                                                                `user_likes_count` int(20) DEFAULT NULL,
                                                                                    `timestamp` int(20) DEFAULT NULL,
                                                                                    PRIMARY KEY (`id`)
                                                                                    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersLookup` (

                                                                                            `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                            `user_id` int(100) DEFAULT NULL,
                                                                                            `user_lookup_id` varchar(300) DEFAULT NULL,
                                                                                            `user_lookup_name` varchar(40) DEFAULT NULL,
                                                                                            `user_lookup_screen_name` varchar(40) DEFAULT NULL,
                                                                                            `user_lookup_access_token` varchar(40) DEFAULT NULL,
                                                                                            `user_lookup_description` varchar(15) DEFAULT NULL,
                                                                                            `user_lookup_likes_count` int(20) DEFAULT NULL,
                                                                                                `timestamp` int(20) DEFAULT NULL,
                                                                                                PRIMARY KEY (`id`)
                                                                                                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSearch` (

                                                                                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                                        `user_id` int(100) DEFAULT NULL,
                                                                                                        `user_search_id` varchar(300) DEFAULT NULL,
                                                                                                        `user_search_name` varchar(40) DEFAULT NULL,
                                                                                                        `user_search_screen_name` varchar(40) DEFAULT NULL,
                                                                                                        `user_search_access_token` varchar(40) DEFAULT NULL,
                                                                                                        `user_search_description` varchar(15) DEFAULT NULL,
                                                                                                        `user_search_likes_count` int(20) DEFAULT NULL,
                                                                                                            `timestamp` int(20) DEFAULT NULL,
                                                                                                            PRIMARY KEY (`id`)
                                                                                                            ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersShow` (

                                                                                                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                                                `user_id` int(100) DEFAULT NULL,
                                                                                                                `user_show_id` varchar(300) DEFAULT NULL,
                                                                                                                `user_show_name` varchar(40) DEFAULT NULL,
                                                                                                                `user_show_screen_name` varchar(40) DEFAULT NULL,
                                                                                                                `user_show_access_token` varchar(40) DEFAULT NULL,
                                                                                                                `user_show_description` varchar(15) DEFAULT NULL,
                                                                                                                `user_show_likes_count` int(20) DEFAULT NULL,
                                                                                                                    `timestamp` int(20) DEFAULT NULL,
                                                                                                                    PRIMARY KEY (`id`)
                                                                                                                    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSuggestions` (

                                                                                                                            `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                                                            `user_id` int(100) DEFAULT NULL,
                                                                                                                            `user_suggestions_id` varchar(300) DEFAULT NULL,
                                                                                                                            `user_suggestions_name` varchar(40) DEFAULT NULL,
                                                                                                                            `user_suggestions_screen_name` varchar(40) DEFAULT NULL,
                                                                                                                            `user_suggestions_access_token` varchar(40) DEFAULT NULL,
                                                                                                                            `user_suggestions_description` varchar(15) DEFAULT NULL,
                                                                                                                            `user_suggestions_likes_count` int(20) DEFAULT NULL,
                                                                                                                                `timestamp` int(20) DEFAULT NULL,
                                                                                                                                PRIMARY KEY (`id`)
                                                                                                                                ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSuggestionsSlug` (

                                                                                                                                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                                                                                                                                        `user_id` int(100) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_id` varchar(300) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_name` varchar(40) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_screen_name` varchar(40) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_access_token` varchar(40) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_description` varchar(15) DEFAULT NULL,
                                                                                                                                                        `user_suggestions_slug_likes_count` int(20) DEFAULT NULL,
                                                                                                                                                            `timestamp` int(20) DEFAULT NULL,
                                                                                                                                                            PRIMARY KEY (`id`)
                                                                                                                                                            ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSuggestionsSlugMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`user_suggestions_slug_members_id` varchar(300) DEFAULT NULL,
`user_suggestions_slug_members_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_screen_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_access_token` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_description` varchar(15) DEFAULT NULL,
`user_suggestions_slug_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSuggestionsSlugMembersSuggestions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_id` varchar(300) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_screen_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_access_token` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_description` varchar(15) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `twitterUsersSuggestionsSlugMembersSuggestionsSlug` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_id` varchar(300) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_screen_name` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_access_token` varchar(40) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_description` varchar(15) DEFAULT NULL,
`user_suggestions_slug_members_suggestions_slug_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `whatsappOauth` (

`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`whatsapp_oauth_id` varchar(300) DEFAULT NULL,
`whatsapp_oauth_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_screen_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_access_token` varchar(40) DEFAULT NULL,
`whatsapp_oauth_description` varchar(15) DEFAULT NULL,
`whatsapp_oauth_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `whatsappOauthMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`whatsapp_oauth_members_id` varchar(300) DEFAULT NULL,
`whatsapp_oauth_members_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_screen_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_access_token` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_description` varchar(15) DEFAULT NULL,
`whatsapp_oauth_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `whatsappOauthMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`whatsapp_oauth_members_members_id` varchar(300) DEFAULT NULL,
`whatsapp_oauth_members_members_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_members_screen_name` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_members_access_token` varchar(40) DEFAULT NULL,
`whatsapp_oauth_members_members_description` varchar(15) DEFAULT NULL,
`whatsapp_oauth_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `telegramOauth` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`telegram_oauth_id` varchar(300) DEFAULT NULL,
`telegram_oauth_name` varchar(40) DEFAULT NULL,
`telegram_oauth_screen_name` varchar(40) DEFAULT NULL,
`telegram_oauth_access_token` varchar(40) DEFAULT NULL,
`telegram_oauth_description` varchar(15) DEFAULT NULL,
`telegram_oauth_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `telegramOauthMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`telegram_oauth_members_id` varchar(300) DEFAULT NULL,
`telegram_oauth_members_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_screen_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_access_token` varchar(40) DEFAULT NULL,
`telegram_oauth_members_description` varchar(15) DEFAULT NULL,
`telegram_oauth_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `telegramOauthMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`telegram_oauth_members_members_id` varchar(300) DEFAULT NULL,
`telegram_oauth_members_members_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_screen_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_access_token` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_description` varchar(15) DEFAULT NULL,
`telegram_oauth_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `telegramOauthMembersMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`telegram_oauth_members_members_members_id` varchar(300) DEFAULT NULL,
`telegram_oauth_members_members_members_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_members_screen_name` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_members_access_token` varchar(40) DEFAULT NULL,
`telegram_oauth_members_members_members_description` varchar(15) DEFAULT NULL,
`telegram_oauth_members_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `googleOauth` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`google_oauth_id` varchar(300) DEFAULT NULL,
`google_oauth_name` varchar(40) DEFAULT NULL,
`google_oauth_screen_name` varchar(40) DEFAULT NULL,
`google_oauth_access_token` varchar(40) DEFAULT NULL,
`google_oauth_description` varchar(15) DEFAULT NULL,
`google_oauth_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `googleOauthMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`google_oauth_members_id` varchar(300) DEFAULT NULL,
`google_oauth_members_name` varchar(40) DEFAULT NULL,
`google_oauth_members_screen_name` varchar(40) DEFAULT NULL,
`google_oauth_members_access_token` varchar(40) DEFAULT NULL,
`google_oauth_members_description` varchar(15) DEFAULT NULL,
`google_oauth_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `googleOauthMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`google_oauth_members_members_id` varchar(300) DEFAULT NULL,
`google_oauth_members_members_name` varchar(40) DEFAULT NULL,
`google_oauth_members_members_screen_name` varchar(40) DEFAULT NULL,
`google_oauth_members_members_access_token` varchar(40) DEFAULT NULL,
`google_oauth_members_members_description` varchar(15) DEFAULT NULL,
`google_oauth_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `googleOauthMembersMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`google_oauth_members_members_members_id` varchar(300) DEFAULT NULL,
`google_oauth_members_members_members_name` varchar(40) DEFAULT NULL,
`google_oauth_members_members_members_screen_name` varchar(40) DEFAULT NULL,
`google_oauth_members_members_members_access_token` varchar(40) DEFAULT NULL,
`google_oauth_members_members_members_description` varchar(15) DEFAULT NULL,
`google_oauth_members_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `following` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`following_id` varchar(300) DEFAULT NULL,
`following_name` varchar(40) DEFAULT NULL,
`following_screen_name` varchar(40) DEFAULT NULL,
`following_access_token` varchar(40) DEFAULT NULL,
`following_description` varchar(15) DEFAULT NULL,
`following_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subscriptions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`subscription_id` varchar(300) DEFAULT NULL,
`subscription_name` varchar(40) DEFAULT NULL,
`subscription_screen_name` varchar(40) DEFAULT NULL,
`subscription_access_token` varchar(40) DEFAULT NULL,
`subscription_description` varchar(15) DEFAULT NULL,
`subscription_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subscriptionsMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`subscriptions_members_id` varchar(300) DEFAULT NULL,
`subscriptions_members_name` varchar(40) DEFAULT NULL,
`subscriptions_members_screen_name` varchar(40) DEFAULT NULL,
`subscriptions_members_access_token` varchar(40) DEFAULT NULL,
`subscriptions_members_description` varchar(15) DEFAULT NULL,
`subscriptions_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subscriptionsMembersMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`subscriptions_members_members_id` varchar(300) DEFAULT NULL,
`subscriptions_members_members_name` varchar(40) DEFAULT NULL,
`subscriptions_members_members_screen_name` varchar(40) DEFAULT NULL,
`subscriptions_members_members_access_token` varchar(40) DEFAULT NULL,
`subscriptions_members_members_description` varchar(15) DEFAULT NULL,
`subscriptions_members_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `userFollowing` (
`id` int(11) NOT NULL,
`user1_id` int(11) DEFAULT NULL,
`user2_id` int(11) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `userSubscriptions` (
`id` int(11) NOT NULL,
`user1_id` int(11) DEFAULT NULL,
`user2_id` int(11) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `userBotSubs` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`user_bot_subs_id` varchar(300) DEFAULT NULL,
`user_bot_subs_name` varchar(40) DEFAULT NULL,
`user_bot_subs_screen_name` varchar(40) DEFAULT NULL,
`user_bot_subs_access_token` varchar(40) DEFAULT NULL,
`user_bot_subs_description` varchar(15) DEFAULT NULL,
`user_bot_subs_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `userBotSubsMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`user_bot_subs_members_id` varchar(300) DEFAULT NULL,
`user_bot_subs_members_name` varchar(40) DEFAULT NULL,
`user_bot_subs_members_screen_name` varchar(40) DEFAULT NULL,
`user_bot_subs_members_access_token` varchar(40) DEFAULT NULL,
`user_bot_subs_members_description` varchar(15) DEFAULT NULL,
`user_bot_subs_members_likes_count` int(20) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ipAddress` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`ip` varchar(40) DEFAULT NULL,
`location` varchar(40) DEFAULT NULL,
`country` varchar(40) DEFAULT NULL,
`countryCode` varchar(40) DEFAULT NULL,
`region` varchar(40) DEFAULT NULL,
`regionName` varchar(40) DEFAULT NULL,
`city` varchar(40) DEFAULT NULL,
`zip` varchar(40) DEFAULT NULL,
`lat` varchar(40) DEFAULT NULL,
`lon` varchar(40) DEFAULT NULL,
`timezone` varchar(40) DEFAULT NULL,
`isp` varchar(40) DEFAULT NULL,
`org` varchar(40) DEFAULT NULL,
`as` varchar(40) DEFAULT NULL,
`query` varchar(40) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `likes` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`tweet_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `retweets` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`tweet_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `follows` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`follow_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `unfollows` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`unfollow_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subscriptions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`subscription_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `unsubscriptions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`unsubscription_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mentions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`mention_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`message_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessages` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessagesSent` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_sent_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessagesReceived` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_received_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessagesDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessagesSentDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_sent_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `directMessagesReceivedDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`direct_message_received_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `lists` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMemberships` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_membership_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscriptions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscription_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMembersAdded` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_added_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMembersRemoved` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_removed_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscribers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscriber_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscribersAdded` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscriber_added_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscribersRemoved` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscriber_removed_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMembershipsDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_membership_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscriptionsDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscription_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMembersDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listSubscribersDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_subscriber_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listCreated` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_created_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listUpdated` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_updated_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listDestroyed` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_destroyed_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listUpdatedMembers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_updated_members_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listUpdatedSubscribers` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_updated_subscribers_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listUpdatedMemberships` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_updated_memberships_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listUpdatedSubscriptions` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_updated_subscriptions_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `listMemberAdded` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`list_member_added_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `location` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`location_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `media` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`media_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mediaDeleted` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`media_deleted_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mediaUpdated` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(100) DEFAULT NULL,
`media_updated_id` varchar(300) DEFAULT NULL,
`timestamp` int(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `userMessages` (
`id` int(11) unsigned NOT NULL,
`userid` int(11) DEFAULT NULL,
`recipientid` int(11) DEFAULT NULL,
`messageid` int(11) DEFAULT NULL,
`content` varchar(500) DEFAULT NULL,
`image` varchar(35) DEFAULT NULL,
`type` varchar(14) DEFAULT NULL,
`private` tinyint(1) DEFAULT '0',
`status` varchar(10) DEFAULT 'unread',
`viewed` int(2) DEFAULT '0',
`timestamp` int(20) DEFAULT NULL,
`deleted` tinyint(1) DEFAULT '0',
`deleted_by` int(11) DEFAULT NULL,
`deleted_timestamp` int(20) DEFAULT NULL,
`deleted_by_user` tinyint(1) DEFAULT '0',
`deleted_by_recipient` tinyint(1) DEFAULT '0',
`deleted_by_admin` tinyint(1) DEFAULT '0',
`deleted_by_moderator` tinyint(1) DEFAULT '0',
`deleted_by_system` tinyint(1) DEFAULT '0',
`deleted_by_user_timestamp` int(20) DEFAULT NULL,
`deleted_by_recipient_timestamp` int(20) DEFAULT NULL,
`deleted_by_admin_timestamp` int(20) DEFAULT NULL,
`deleted_by_moderator_timestamp` int(20) DEFAULT NULL,
`deleted_by_system_timestamp` int(20) DEFAULT NULL,
`deleted_by_user_reason` varchar(100) DEFAULT NULL,
`deleted_by_recipient_reason` varchar(100) DEFAULT NULL,
`deleted_by_admin_reason` varchar(100) DEFAULT NULL,
`deleted_by_moderator_reason` varchar(100) DEFAULT NULL,
`deleted_by_system_reason` varchar(100) DEFAULT NULL,
`deleted_by_user_reason_id` int(11) DEFAULT NULL,
`deleted_by_recipient_reason_id` int(11) DEFAULT NULL,
`deleted_by_admin_reason_id` int(11) DEFAULT NULL,
`deleted_by_moderator_reason_id` int(11) DEFAULT NULL,
`deleted_by_system_reason_id` int(11) DEFAULT NULL,
`deleted_by_user_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_recipient_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_admin_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_moderator_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_system_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_user_reason_other_id` int(11) DEFAULT NULL,
`deleted_by_recipient_reason_other_id` int(11) DEFAULT NULL,
`deleted_by_admin_reason_other_id` int(11) DEFAULT NULL,
`deleted_by_moderator_reason_other_id` int(11) DEFAULT NULL,
`deleted_by_system_reason_other_id` int(11) DEFAULT NULL,
`deleted_by_user_reason_other_text` varchar(100) DEFAULT NULL,
`deleted_by_recipient_reason_other_text` varchar(100) DEFAULT NULL,
`deleted_by_admin_reason_other_text` varchar(100) DEFAULT NULL,
`deleted_by_moderator_reason_other_text` varchar(100) DEFAULT NULL,
`deleted_by_system_reason_other_text` varchar(100) DEFAULT NULL,
`deleted_by_user_reason_other_text_id` int(11) DEFAULT NULL,
`deleted_by_recipient_reason_other_text_id` int(11) DEFAULT NULL,
`deleted_by_admin_reason_other_text_id` int(11) DEFAULT NULL,
`deleted_by_moderator_reason_other_text_id` int(11) DEFAULT NULL,
`deleted_by_system_reason_other_text_id` int(11) DEFAULT NULL,
`deleted_by_user_reason_other_text_timestamp` int(20) DEFAULT NULL,
`deleted_by_recipient_reason_other_text_timestamp` int(20) DEFAULT NULL,
`deleted_by_admin_reason_other_text_timestamp` int(20) DEFAULT NULL,
`deleted_by_moderator_reason_other_text_timestamp` int(20) DEFAULT NULL,
`deleted_by_system_reason_other_text_timestamp` int(20) DEFAULT NULL,
`deleted_by_user_reason_other_text_reason` varchar(100) DEFAULT NULL,
`deleted_by_recipient_reason_other_text_reason` varchar(100) DEFAULT NULL,
`deleted_by_admin_reason_other_text_reason` varchar(100) DEFAULT NULL,
`deleted_by_moderator_reason_other_text_reason` varchar(100) DEFAULT NULL,
`deleted_by_system_reason_other_text_reason` varchar(100) DEFAULT NULL,
`deleted_by_user_reason_other_text_reason_id` int(11) DEFAULT NULL,
`deleted_by_recipient_reason_other_text_reason_id` int(11) DEFAULT NULL,
`deleted_by_admin_reason_other_text_reason_id` int(11) DEFAULT NULL,
`deleted_by_moderator_reason_other_text_reason_id` int(11) DEFAULT NULL,
`deleted_by_system_reason_other_text_reason_id` int(11) DEFAULT NULL,
`deleted_by_user_reason_other_text_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_recipient_reason_other_text_reason_other` varchar(100) DEFAULT NULL,
`deleted_by_admin_reason_other_text_reason_other` varchar(100) DEFAULT NULL,

`deleted_by_moderator_reason_other_text_reason_other` varchar(100) DEFAULT NULL,

`deleted_by_system_reason_other_text_reason_other` varchar(100) DEFAULT NULL,

`private_message` tinyint(1) DEFAULT '0',

`private_by` int(11) DEFAULT NULL,

`private_timestamp` int(20) DEFAULT NULL,

`private_by_user` tinyint(1) DEFAULT '0',

PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `botNotifications` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`bot_id` int(11) NOT NULL,
`notification_id` int(11) NOT NULL,
`notification_type` varchar(100) NOT NULL,
`notification_text` varchar(100) NOT NULL,
`notification_timestamp` int(20) NOT NULL,
`notification_read` tinyint(1) NOT NULL DEFAULT '0',
`notification_read_timestamp` int(20) DEFAULT NULL,
`notification_read_by` int(11) DEFAULT NULL,
`notification_read_by_user` tinyint(1) DEFAULT '0',
`notification_read_by_user_timestamp` int(20) DEFAULT NULL,
`notification_read_by_user_by` int(11) DEFAULT NULL,
`notification_read_by_user_by_user` tinyint(1) DEFAULT '0',
`notification_read_by_user_by_user_timestamp` int(20) DEFAULT NULL,
`notification_read_by_user_by_user_by` int(11) DEFAULT NULL,
`notification_read_by_user_by_user_by_user` tinyint(1) DEFAULT '0',
`user2` int(11) DEFAULT NULL,
`viewed` int(11) DEFAULT '0',
`viewed_timestamp` int(20) DEFAULT NULL,
`viewed_by` int(11) DEFAULT NULL,
`viewed_by_user` tinyint(1) DEFAULT '0',
`viewed_by_user_timestamp` int(20) DEFAULT NULL,
`viewed_by_user_by` int(11) DEFAULT NULL,
`viewed_by_user_by_user` tinyint(1) DEFAULT '0',
`viewed_by_user_by_user_timestamp` int(20) DEFAULT NULL,
primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `postcomment` (
 `comment_id` int(11) NOT NULL,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `comment` text NOT NULL,
    `comment_timestamp` int(20) NOT NULL,
    `comment_by` int(11) NOT NULL,
    `comment_by_user` tinyint(1) NOT NULL,
    `comment_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by_user_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
 `replies` int(11) DEFAULT '0',
 `votesup` int(11) DEFAULT '0',
`timestamp` int(20) DEFAULT NULL,
primary key (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `postcommentreply` (
 `reply_id` int(11) NOT NULL,
    `comment_id` int(11) NOT NULL,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `reply` text NOT NULL,
    `reply_timestamp` int(20) NOT NULL,
    `reply_by` int(11) NOT NULL,
    `reply_by_user` tinyint(1) NOT NULL,
    `reply_by_user_timestamp` int(20) NOT NULL,
    `reply_by_user_by` int(11) NOT NULL,
    `reply_by_user_by_user` tinyint(1) NOT NULL,
    `reply_by_user_by_user_timestamp` int(20) NOT NULL,
    `reply_by_user_by_user_by` int(11) NOT NULL,
    `reply_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `reply_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
    `reply_by_user_by_user_by_user_by` int(11) NOT NULL,
    `reply_by_user_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `reply_by_user_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
 `votesup` int(11) DEFAULT '0',
`timestamp` int(20) DEFAULT NULL,
primary key (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `reply` (
   `reply_id` int(11) NOT NULL,
   `content` text NOT NULL,
   `image` varchar(70) DEFAULT NULL,
    `image2` varchar(70) DEFAULT NULL,
    `image3` varchar(70) DEFAULT NULL,
    `image4` varchar(70) DEFAULT NULL,
    `image5` varchar(70) DEFAULT NULL,
    `image6` varchar(70) DEFAULT NULL,
    `type` varchar(20) NOT NULL,
    `type_id` int(11) NOT NULL,
    `reply_timestamp` int(20) NOT NULL,
    `reply_by` int(11) NOT NULL,
    `reply_by_user` tinyint(1) NOT NULL,
    `reply_by_user_timestamp` int(20) NOT NULL,
   `comment_id` int(40) NOT NULL,
   `rvotesdown` int(23) NOT NULL DEFAULT '0',
   `rvotesup` int(23) NOT NULL DEFAULT '0',
    `rviews` int(23) NOT NULL DEFAULT '0',
   `post_id` int(40) NOT NULL,
   `user_id` int(40) NOT NULL,
   `timestamp` int(20) NOT NULL,
   primary key (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `commentReply` (
 `comment_id` int(11) NOT NULL,
    `reply_id` int(11) NOT NULL,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `comment` text NOT NULL,
    `comment_timestamp` int(20) NOT NULL,
    `comment_by` int(11) NOT NULL,
    `comment_by_user` tinyint(1) NOT NULL,
    `comment_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
    `comment_by_user_by_user_by_user_by` int(11) NOT NULL,
    `comment_by_user_by_user_by_user_by_user` tinyint(1) NOT NULL,
    `comment_by_user_by_user_by_user_by_user_timestamp` int(20) NOT NULL,
 `replies` int(11) DEFAULT '0',
 `votesup` int(11) DEFAULT '0',
`timestamp` int(20) DEFAULT NULL,
primary key (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `repost` (
    `id` int(8) NOT NULL,
    `post_id` int(11) DEFAULT NULL,
    `user_id` int(11) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `repost_by` int(11) DEFAULT NULL,
    `reposet_by_user` tinyint(1) DEFAULT NULL,
    `repost_by_user_timestamp` int(20) DEFAULT NULL,
    `repost_by_user_by` int(11) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `repostc` (
 `id` int(8) NOT NULL,
 `post_id` int(11) DEFAULT NULL,
 `post` varchar(280) DEFAULT NULL,
 `user_id` int(11) NOT NULL,
 `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `tag` varchar(50) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `tag_by` int(11) DEFAULT NULL,
    `tag_by_user` tinyint(1) DEFAULT NULL,
    `tag_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `group` varchar(50) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `group_by` int(11) DEFAULT NULL,
    `group_by_user` tinyint(1) DEFAULT NULL,
    `group_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `group_id` int(11) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `group_by` int(11) DEFAULT NULL,
    `group_by_user` tinyint(1) DEFAULT NULL,
    `group_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `group_posts`
--

CREATE TABLE IF NOT EXISTS `group_posts` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `group_id` int(11) DEFAULT NULL,
    `post` varchar(280) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `group_by` int(11) DEFAULT NULL,
    `group_by_user` tinyint(1) DEFAULT NULL,
    `group_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `group_posts_comments`
--

CREATE TABLE IF NOT EXISTS `group_posts_comments` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `group_id` int(11) DEFAULT NULL,
    `post_id` int(11) DEFAULT NULL,
    `comment` varchar(280) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `group_by` int(11) DEFAULT NULL,
    `group_by_user` tinyint(1) DEFAULT NULL,
    `group_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `group_posts_replies`
--

CREATE TABLE IF NOT EXISTS `group_posts_replies` (
  `id` int(8) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
    `group_id` int(11) DEFAULT NULL,
    `post_id` int(11) DEFAULT NULL,
    `reply` varchar(280) DEFAULT NULL,
    `timestamp` int(20) DEFAULT NULL,
    `group_by` int(11) DEFAULT NULL,
    `group_by_user` tinyint(1) DEFAULT NULL,
    `group_by_user_timestamp` int(20) DEFAULT NULL,
    `location` varchar(50) DEFAULT NULL,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


