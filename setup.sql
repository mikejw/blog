DROP DATABASE IF EXISTS project;
CREATE DATABASE project;
USE project;

DROP TABLE IF EXISTS user,
    contact,
    shippingaddr,
    blog,
    blog_revision,
    tag,
    blog_tag,
    blog_image,
    blog_comment,
    blog_category,
    blog_item_category,
    blog_attachment,
    setting;



CREATE TABLE user
(
    id         INT(11) AUTO_INCREMENT PRIMARY KEY,
    email      VARCHAR(128) NOT NULL,
    auth       TINYINT(1) NOT NULL DEFAULT 0,
    username   VARCHAR(32)  NOT NULL,
    password   VARCHAR(128) NOT NULL,
    reg_code   VARCHAR(32) NULL,
    active     TINYINT(1) NOT NULL DEFAULT 0,
    registered TIMESTAMP NULL,
    activated  TIMESTAMP NULL,
    fullname   VARCHAR(128) NULL,
    picture    VARCHAR(128) NULL,
    about      TEXT NULL
) ENGINE = InnoDB;


CREATE TABLE contact
(
    id         INT(11) AUTO_INCREMENT PRIMARY KEY,
    user_id    INT(11) NULL,
    message    TINYINT(1) NOT NULL DEFAULT 0,
    subject    VARCHAR(255) NULL,
    body       TEXT NULL,
    email      VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NULL,
    last_name  VARCHAR(255) NULL,
    submitted  TIMESTAMP NULL,
    FOREIGN KEY (user_id) REFERENCES user (id)
) ENGINE = InnoDB;

CREATE TABLE shippingaddr
(
    id              INT(11) AUTO_INCREMENT PRIMARY KEY,
    user_id         INT(11) NOT NULL,
    first_name      VARCHAR(128) NULL,
    last_name       VARCHAR(128) NULL,
    address1        VARCHAR(128) NULL,
    address2        VARCHAR(128) NULL,
    city            VARCHAR(128) NULL,
    state           VARCHAR(128) NULL,
    zip             VARCHAR(128) NULL,
    country         VARCHAR(128) NULL,
    default_address TINYINT(1) NOT NULL DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES user (id)
) ENGINE = InnoDB;



CREATE TABLE blog
(
    id      INT(11) AUTO_INCREMENT PRIMARY KEY,
    status  INT(11) NOT NULL,
    user_id INT(11) NOT NULL,
    stamp   TIMESTAMP NULL DEFAULT NULL,
    heading VARCHAR(64) NOT NULL,
    body    TEXT,
    slug    VARCHAR(64) NULL,
    FOREIGN KEY (user_id) REFERENCES user (id)
) ENGINE = InnoDB;


CREATE TABLE blog_revision
(
    id      INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_id INT(11) NOT NULL,
    body    TEXT NULL,
    meta    TEXT NULL,
    stamp   TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (blog_id) REFERENCES blog (id)
) ENGINE = InnoDB;



CREATE TABLE tag
(
    id  INT(11) AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(128) NOT NULL
) ENGINE = InnoDB;


CREATE TABLE blog_tag
(
    blog_id INT(11) NOT NULL,
    tag_id  INT(11) NOT NULL,
    PRIMARY KEY (blog_id, tag_id),
    FOREIGN KEY (blog_id) REFERENCES blog (id),
    FOREIGN KEY (tag_id) REFERENCES tag (id)
) ENGINE = InnoDB;



CREATE TABLE blog_image
(
    id           INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_id      INT(11) NOT NULL,
    filename     VARCHAR(64) NOT NULL,
    image_width  VARCHAR(11) NULL,
    image_height VARCHAR(11) NULL,
    FOREIGN KEY (blog_id) REFERENCES blog (id)
) ENGINE = InnoDB;



CREATE TABLE blog_comment
(
    id      INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_id INT(11) NOT NULL,
    user_id INT(11) NOT NULL,
    status  INT(11) NOT NULL,
    stamp   TIMESTAMP NOT NULL,
    heading VARCHAR(64) NULL,
    body    TEXT,
    FOREIGN KEY (blog_id) REFERENCES blog (id),
    FOREIGN KEY (user_id) REFERENCES user (id)
) ENGINE = InnoDB;



CREATE TABLE blog_category
(
    id               INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_category_id INT(11) NULL,
    label            VARCHAR(64) NOT NULL,
    meta             TEXT NULL,
    position         INT(11) NOT NULL DEFAULT 0,
    FOREIGN KEY (blog_category_id) REFERENCES blog_category (id)
) ENGINE = InnoDB;



CREATE TABLE blog_item_category
(
    blog_id          INT(11) NOT NULL,
    blog_category_id INT(11) NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES blog (id),
    FOREIGN KEY (blog_category_id) REFERENCES blog_category (id),
    PRIMARY KEY (blog_id, blog_category_id)
);



CREATE TABLE blog_attachment
(
    id       INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_id  INT(11) NOT NULL,
    filename VARCHAR(128) NULL,
    url      VARCHAR(128) NULL,
    FOREIGN KEY (blog_id) REFERENCES blog (id)
) ENGINE = InnoDB;



CREATE TABLE image_size
(
    id     INT(11)                 AUTO_INCREMENT PRIMARY KEY,
    name   VARCHAR(128) NULL,
    prefix VARCHAR(64) NULL,
    width  INT(11)                 NOT NULL,
    height INT(11)                 NOT NULL
) ENGINE=InnoDB;



CREATE TABLE setting
(
    id        INT(11) AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(255) NOT NULL,
    value     VARCHAR(255) NOT NULL,
    vendor_id INT(11) NULL DEFAULT NULL
) ENGINE = InnoDB;



