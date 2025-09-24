use project;


insert into user values (
    NULL,
    'mail@mikejw.co.uk',
    2,
    'mikejw',
    '$2y$10$ngJDK9ipwxmgPonTbJ1Bu.AvZOftFhUMsF44AalW7RWqTbfVK7hwy',
    '', 1, NOW(), NOW(), 'Mike Whiting', NULL, NULL
);


insert into blog_category values (
    NULL, NULL, 'Technology', '{ "fa": "cog"}', 1
);

insert into blog_category values (
    NULL, NULL, 'Music', '{ "fa": "music"}', 2
);

insert into blog_category values (
    NULL, NULL, 'Other', '{ "fa": "plug"}', 3
);

insert into blog_category values (
    NULL, NULL, 'Photography', '{ "fa": "camera"}', 4
);

insert into blog_category values (
    NULL, NULL, 'BMX', '{ "fa": "bicycle"}', 5
);

insert into blog_category values (
    NULL, NULL, 'Releases', '{ "fa": "gift"}', 6
);

insert into blog_category values (
    NULL, NULL, 'Experiments', '{ "fa": "flask"}', 7
);

insert into blog_category values (
    NULL, NULL, 'Misc', '{ "fa": "pen-fancy"}', 9
);


insert into setting values (
    NULL, 'title', 'Online Vibes', NULL
);

insert into setting values (
    NULL, 'keywords', 'online, blog, vibes', NULL
);

insert into setting values (
    NULL,
    'description',
    'Welcome to Online Vibes, we hope you enjoy your stay.',
    NULL
);

insert into setting values (
    NULL, 'blogtitle', 'Online Vibes', NULL
);

insert into setting values (
    NULL, 'blogsubtitle', 'A blog about vibes', NULL
);

insert into setting values (
    NULL, 'link1name', 'X', NULL
);

insert into setting values (
    NULL, 'link1url', 'https://twitter.com/onlinevibes_', NULL
);


insert into setting values (
    NULL, 'link2name', 'Instagram', NULL
);

insert into setting values (
    NULL, 'link2url', 'https://instagram.com/onlinevibesofficial', NULL
);
