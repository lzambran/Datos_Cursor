
--TABLA CLIENTE
create table CLIENTE (
   ID_CLIENTE           INT4                 not null,
   NOMBRE_CLIENTE       VARCHAR(25)          not null,
   APELLIDO_CLIENTE     VARCHAR(25)          not null,
   DIRECCION_CLIENTE    VARCHAR(25)          not null,
   TELEFONO_CLIENTE     VARCHAR(25)          not null,
   CEDULA_CLIENTE       VARCHAR(10)          not null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

insert into Cliente values (1,'Luis','Zambrano','Las Gilces','0978716971','1314487222');
insert into Cliente values (2,'Maria','Alcivar','Portoviejo','097563214','1314569871');
insert into Cliente values (3,'Marcos','Reyes','San Pablo','0976452367','1303578941');
insert into Cliente values (4,'Juan','Perez','Sequita','0976452367','13063578941');

--TABLA SERVICIO

create table SERVICIO (
   ID_SERVICIO          INT4                 not null,
   ID_SOLICITUD         INT4                 null,
   TIPO_SERVICIO        VARCHAR(25)          not null,
   PRECIO_SERVICIO      INT4                 not null,
   HORA_SERVICIO        TIME                 not null,
   PESO_SERVICIO_KG     VARCHAR(25)          not null,
   FECHA_SERVICIO       DATE                 not null,
   TOTAL_SERVICIO       INT4                 not null,
   IVA_SERVICIO         VARCHAR(15)          not null,
   constraint PK_SERVICIO primary key (ID_SERVICIO)
);


insert into Servicio values (1,1,'Embalaje',100,'10:30','null','10-12-2020',100,'null');
insert into Servicio values (2,2,'Desmontaje',300,'10:30','null','16-08-0215',300,'null');
insert into Servicio values (3,3,'Montaje',150,'14:30','null','18-09-2019',150,'null');
insert into Servicio values (4,4,'Limpieza',70,'13:30','null','25-12-2019',70,'null');
insert into Servicio values (5,5,'Embalaje',100,'11:30','null','10-5-2019',100,'null');

--TABLA SOLICITUD
create table SOLICITUD (
   ID_SOLICITUD         INT4                 not null,
   ID_EMPRESA           INT4                 null,
   ID_CLIENTE           INT4                 null,
   ID_EMPLEADO          INT4                 null,
   ACEPTACION_SOLICITUD VARCHAR(25)          not null,
   INICIO_SOLICITUD     VARCHAR(25)          not null,
   DESTINO_SOLICITUD    VARCHAR(25)          not null,
   FECHA_SOLICITUD      DATE                 not null,
   TIPO_SOLICITUD       VARCHAR(25)          not null,
   NUMERO_SOLICITUD     VARCHAR(25)          not null,
   HORA_SOLICITUD       TIME                not null,
   PESOKG_SOLICITUD     VARCHAR(25)          not null,
   VALORPESO_SOLICITUD  INT4                 not null,
   constraint PK_SOLICITUD primary key (ID_SOLICITUD)
);

insert into Solicitud values (1,1,1,1,'si','Portoviejo','Manta','28-05-2020','Mudanza','1','11:00','300kg',300);
insert into Solicitud values (2,1,2,2,'si','Jipijapa','Manta','15-05-2020','Mudanza','2','14:00','200kg',200);
insert into Solicitud values (3,1,3,3,'si','Portoviejo','Manta','28-05-2020','Mudanza','3','16:00','300kg',300);
insert into Solicitud values (4,1,4,4,'si','Portoviejo','Manta','28-05-2020','Mudanza','4','09:00','400kg',400);


