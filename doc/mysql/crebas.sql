/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/3/16 15:56:45                           */
/*==============================================================*/


drop table if exists tb_info;

drop table if exists tb_type;

drop table if exists tb_user;

/*==============================================================*/
/* Table: tb_info                                               */
/*==============================================================*/
create table tb_info
(
   id                   int not null auto_increment,
   info_type            int not null,
   info_title           varchar(80) not null,
   info_content         varchar(1000) not null,
   info_linkman         varchar(50) not null,
   info_phone           varchar(50) not null,
   info_email           varchar(100) not null,
   info_date            datetime not null,
   info_state           varchar(1) default 0,
   info_payfor          varchar(1) default 0,
   primary key (id)
);

/*==============================================================*/
/* Table: tb_type                                               */
/*==============================================================*/
create table tb_type
(
   type_id              int not null auto_increment,
   type_name            varchar(20) not null,
   primary key (type_id)
);

/*==============================================================*/
/* Table: tb_user                                               */
/*==============================================================*/
create table tb_user
(
   id                   int not null auto_increment,
   user_name            varchar(20) not null,
   user_password        varchar(10) not null,
   primary key (id)
);

alter table tb_info add constraint FK_Reference_1 foreign key (info_type)
      references tb_type (type_id) on delete restrict on update restrict;

