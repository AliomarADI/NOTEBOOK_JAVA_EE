create table notebooks
(
    user_id integer not null,
    id      serial  not null
        constraint notebooks_pk
            primary key,
    title   varchar,
    text    varchar
);

alter table notebooks
    owner to postgres;
