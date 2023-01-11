<?php

/*PDO Insert Queries

Register User
________________*/
$sql = "INSERT INTO bot (input, reply, user) VALUES (?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$input, $reply, $user ]);

/*Add subscriber
________________*/
$sql = "INSERT INTO subscribers (email) VALUES (?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$email ]);

/*Add User
________________*/
$sql = "INSERT INTO users (name, email, number, password, level) VALUES (?,?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$name, $email, $cell, $password, $level ]);

/*Section Content
________________*/
$sql = "INSERT INTO posts (title, subheading, image, content, userid,timestamp) VALUES (?,?,?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$title, $subheading, $picture, $content, $user, $timeof ]);

/*Add User
________________*/
$sql = "INSERT INTO content (page,heading, content, timestamp) VALUES (?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$page, $head, $content, $time]);

/*Add carousel
________________*/
$sql = "INSERT INTO extension (page,image, type, content, timestamp) VALUES (?,?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$page, $image, $type, $content, $time]);

/*Add section
________________*/
$sql = "INSERT INTO section (page,section, type, content, timestamp) VALUES (?,?,?,?,?)";
$stmt= $pdo->prepare($sql);
$stmt->execute([$page, $section , $type, $content, $time]);
