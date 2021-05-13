create table users
(
    id       serial  not null
        constraint users_pk
            primary key,
    username varchar not null,
    password varchar not null
);

alter table users
    owner to postgres;

create unique index users_username_uindex
    on users (username);
