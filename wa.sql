#Create database  for whatsapp manager platform make all the tables and columns

#Create database  for whatsapp manager platform make all the tables and columns

-- phpMyAdmin SQL Dump

-- version 4.7.7

-- https://www.phpmyadmin.net/

--

-- Host:    localhost

-- Generation Time:  2018-08-08 10:00:00

-- Server version:  5.7.22

-- PHP Version:  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";

--

-- Database:  `whatsapp`

--

-- --------------------------------------------------------

--

-- Table structure for table `admin`

--

CREATE TABLE `admin` (

                         `id` int(11) NOT NULL,

                         `username` varchar(255) NOT NULL,

                         `password` varchar(255) NOT NULL,

                         `email` varchar(255) NOT NULL,

                         `phone` varchar(255) NOT NULL,

                         `status` varchar(255) NOT NULL,

                         `created_at` datetime NOT NULL,

                         `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

-- Dumping data for table `admin`

--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES

    (1, 'admin', 'admin', ' ', ' ', 'active', '2018-08-08 10:00:00', '2018-08-08 10:00:00');

-- --------------------------------------------------------

--

-- Table structure for table `api`

--

CREATE TABLE `api` (

                       `id` int(11) NOT NULL,
                       `api_key` varchar(255) NOT NULL,
                       `api_secret` varchar(255) NOT NULL,
                       `api_url` varchar(255) NOT NULL,
                       `api_status` varchar(255) NOT NULL,
                       `created_at` datetime NOT NULL,
                       `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

-- Dumping data for table `api`

--

INSERT INTO `api` (`id`, `api_key`, `api_secret`, `api_url`, `api_status`, `created_at`, `updated_at`) VALUES

    (1, ' ', ' ', ' ', 'active', '2018-08-08 10:00:00', '2018-08-08 10:00:00');

-- --------------------------------------------------------

--

-- Table structure for table `campaign`

--

CREATE TABLE `campaign` (

                            `id` int(11) NOT NULL,

                            `campaign_name` varchar(255) NOT NULL,

                            `campaign_type` varchar(255) NOT NULL,

                            `campaign_message` varchar(255) NOT NULL,

                            `campaign_status` varchar(255) NOT NULL,

                            `created_at` datetime NOT NULL,

                            `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `campaign_contact`

--

CREATE TABLE `campaign_contact` (

                                    `id` int(11) NOT NULL,

                                    `campaign_id` int(11) NOT NULL,

                                    `contact_id` int(11) NOT NULL,

                                    `created_at` datetime NOT NULL,

                                    `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `contact`

--

CREATE TABLE `contact` (

                           `id` int(11) NOT NULL,

                           `contact_name` varchar(255) NOT NULL,

                           `contact_phone` varchar(255) NOT NULL,

                           `contact_status` varchar(255) NOT NULL,

                           `created_at` datetime NOT NULL,

                           `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `contact_group`

--

CREATE TABLE `contact_group` (

                                 `id` int(11) NOT NULL,

                                 `group_name` varchar(255) NOT NULL,

                                 `group_status` varchar(255) NOT NULL,

                                 `created_at` datetime NOT NULL,

                                 `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `contact_group_contact`

--

CREATE TABLE `contact_group_contact` (

                                         `id` int(11) NOT NULL,

                                         `contact_group_id` int(11) NOT NULL,

                                         `contact_id` int(11) NOT NULL,

                                         `created_at` datetime NOT NULL,

                                         `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `contact_group_contact`

--

CREATE TABLE `contact_group_contact` (

                                         `id` int(11) NOT NULL,

                                         `contact_group_id` int(11) NOT NULL,

                                         `contact_id` int(11) NOT NULL,

                                         `created_at` datetime NOT NULL,

                                         `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `whatsapp_bots`

--

CREATE TABLE `whatsapp_bots` (

                                 `id` int(11) NOT NULL,

                                 `bot_name` varchar(255) NOT NULL,

                                 `bot_status` varchar(255) NOT NULL,

                                 `created_at` datetime NOT NULL,

                                 `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `whatsapp_businesses`

--

CREATE TABLE `whatsapp_businesses` (

                                       `id` int(11) NOT NULL,

                                       `business_name` varchar(255) NOT NULL,

                                       `business_phone` varchar(255) NOT NULL,

                                       `business_status` varchar(255) NOT NULL,

                                       `created_at` datetime NOT NULL,

                                       `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `whatsapp_admins`
-- --------------------------------------------------------

CREATE TABLE `whatsapp_admins` (

                                   `id` int(11) NOT NULL,

                                   `admin_name` varchar(255) NOT NULL,

                                   `admin_phone` varchar(255) NOT NULL,

                                   `admin_status` varchar(255) NOT NULL,

                                   `created_at` datetime NOT NULL,

                                   `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `whatsapp_commands`

--

CREATE TABLE `whatsapp_commands` (

                                     `id` int(11) NOT NULL,

                                     `command_name` varchar(255) NOT NULL,

                                     `command_status` varchar(255) NOT NULL,

                                     `created_at` datetime NOT NULL,

                                     `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `whatsapp_replies`

--

CREATE TABLE `whatsapp_replies` (

                                    `id` int(11) NOT NULL,

                                    `reply_name` varchar(255) NOT NULL,

                                    `reply_status` varchar(255) NOT NULL,

                                    `created_at` datetime NOT NULL,

                                    `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--

-- Table structure for table `whatsapp_templates`

--

CREATE TABLE `whatsapp_templates` (

                                      `id` int(11) NOT NULL,

                                      `template_name` varchar(255) NOT NULL,

                                      `template_status` varchar(255) NOT NULL,

                                      `created_at` datetime NOT NULL,

                                      `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#users

-- Table structure for table `users`

--

CREATE TABLE `users` (

                         `id` int(11) NOT NULL,

                         `name` varchar(255) NOT NULL,

                         `email` varchar(255) NOT NULL,

                         `email_verified_at` timestamp NULL DEFAULT NULL,

                         `password` varchar(255) NOT NULL,

                         `remember_token` varchar(100) DEFAULT NULL,

                         `created_at` timestamp NULL DEFAULT NULL,

                         `updated_at` timestamp NULL DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#user_roles

-- Table structure for table `user_roles`

--

CREATE TABLE `user_roles` (

                              `id` int(11) NOT NULL,

                              `role_name` varchar(255) NOT NULL,

                              `role_status` varchar(255) NOT NULL,

                              `created_at` datetime NOT NULL,

                              `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#user_permissions

-- Table structure for table `user_permissions`

--

CREATE TABLE `user_permissions` (

                                    `id` int(11) NOT NULL,

                                    `permission_name` varchar(255) NOT NULL,

                                    `permission_status` varchar(255) NOT NULL,

                                    `created_at` datetime NOT NULL,

                                    `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#roles

-- Table structure for table `roles`

--

CREATE TABLE `roles` (

                         `id` int(11) NOT NULL,

                         `role_name` varchar(255) NOT NULL,

                         `role_status` varchar(255) NOT NULL,

                         `created_at` datetime NOT NULL,

                         `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#permissions

-- Table structure for table `permissions`

--

CREATE TABLE `permissions` (

                               `id` int(11) NOT NULL,

                               `permission_name` varchar(255) NOT NULL,

                               `permission_status` varchar(255) NOT NULL,

                               `created_at` datetime NOT NULL,

                               `updated_at` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#model_has_roles

-- Table structure for table `model_has_roles`

--

CREATE TABLE `model_has_roles` (

                                   `role_id` int(11) NOT NULL,

                                   `model_type` varchar(255) NOT NULL,

                                   `model_id` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

#model_has_permissions

-- Table structure for table `model_has_permissions`

--

CREATE TABLE `model_has_permissions` (

                                         `permission_id` int(11) NOT NULL,

                                         `model_type` varchar(255) NOT NULL,

                                         `model_id` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#password_resets

-- Table structure for table `password_resets`

--

CREATE TABLE `password_resets` (

                                   `email` varchar(255) NOT NULL,
                                   `token` varchar(255) NOT NULL,
                                   `created_at` timestamp NULL DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
#migrations

-- Table structure for table `migrations`

--

CREATE TABLE `migrations` (

                              `id` int(11) NOT NULL,

                              `migration` varchar(255) NOT NULL,

                              `batch` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Indexes for dumped tables

-- --------------------------------------------------------

-- Indexes for table `admins`

-- --------------------------------------------------------

-- Indexes for table `whatsapp_commands`

--

ALTER TABLE `whatsapp_commands`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `whatsapp_replies`

--

ALTER TABLE `whatsapp_replies`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------


-- Indexes for table `whatsapp_templates`

--

ALTER TABLE `whatsapp_templates`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `users`

--

ALTER TABLE `users`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `user_roles`


ALTER TABLE `user_roles`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `user_permissions`

--

ALTER TABLE `user_permissions`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `roles`

--

ALTER TABLE `roles`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `permissions`

--

ALTER TABLE `permissions`

    ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

-- Indexes for table `model_has_roles`

--

ALTER TABLE `model_has_roles`

    ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`);

-- --------------------------------------------------------

-- Indexes for table `model_has_permissions`

--

ALTER TABLE `model_has_permissions`

    ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`);

-- --------------------------------------------------------

-- Indexes for table `password_resets`

--

ALTER TABLE `password_resets`

    ADD PRIMARY KEY (`email`);

-- --------------------------------------------------------

-- Indexes for table `migrations`

--

ALTER TABLE `migrations`

    ADD PRIMARY KEY (`id`);
