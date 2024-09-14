CREATE TABLE tipos_cuenta
(
    id_tipo_cuenta NUMBER PRIMARY KEY,
    nombre         VARCHAR2(120) NOT NULL
);

CREATE TABLE estados_prestamo
(
    id_estado_prestamo NUMBER PRIMARY KEY,
    estado             VARCHAR2(10) NOT NULL
);

CREATE TABLE  estados_tarjeta
(
    id_estado NUMBER PRIMARY KEY,
    estado    VARCHAR2(10)
);

CREATE TABLE tipo_roles
(
    id_rol NUMBER PRIMARY KEY,
    rol    VARCHAR2(20)
);

CREATE TABLE tipos_transaccion
(
    id_tipo_transaccion NUMBER PRIMARY KEY,
    tipo                VARCHAR2(20)
);

CREATE TABLE tipo_agencia_sucursal
(
    id_tipo_agencia_sucursal NUMBER PRIMARY KEY,
    tipo                     VARCHAR2(20)
);

CREATE TABLE prestamos
(
    id_prestamo NUMBER PRIMARY KEY,
    monto NUMBER(10,2) NOT NULL,
    tasa_interes NUMBER(5) NOT NULL,
    fecha_desembolos DATE NOT NULL ,
    fecha_vencimiento DATE NOT NULL ,
    saldo_pendiente NUMBER(10,2) NOT NULL,
    id_cliente NUMBER,
    id_estado_prestamo NUMBER NOT NULL ,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_estado_prestamo) REFERENCES estados_prestamo(id_estado_prestamo)
);

CREATE TABLE departamentos
(
    id_departamento NUMBER PRIMARY KEY,
    nombre           VARCHAR(100)
);

CREATE TABLE cuentas
(
    id_cuentas    NUMBER        NOT NULL,
    numero_cuenta VARCHAR(10)   NOT NULL,
    salario       NUMBER(10, 2) NOT NULL,
    id_tipo_cuenta NUMBER NOT NULL,
    id_cliente NUMBER NOT NULL,
    FOREIGN KEY (id_tipo_cuenta) REFERENCES tipos_cuenta(id_tipo_cuenta),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE agencias
(
    id_agencia NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    telefono VARCHAR2(9),
    direccion VARCHAR2(100),
    id_agencias NUMBER,
    id_tipo_agencia_sucursal NUMBER,
    FOREIGN KEY (id_agencia) REFERENCES  departamentos(id_departamento),
    FOREIGN KEY (id_tipo_agencia_sucursal) REFERENCES tipo_agencia_sucursal(id_tipo_agencia_sucursal)
);

CREATE TABLE empleados
(
    id_empleado NUMBER PRIMARY KEY,
    nombre      VARCHAR2(100),
    apellido    VARCHAR2(100),
    telefono    VARCHAR2(100),
    id_rol NUMBER UNIQUE,
    id_agencia NUMBER,
    FOREIGN KEY (id_rol) REFERENCES  tipo_roles(id_rol),
    FOREIGN KEY (id_agencia) REFERENCES agencias(id_agencia)
);

CREATE TABLE municipio
(
    id_municipio  NUMBER PRIMARY KEY,
    nombre        VARCHAR2(100),
    codigo_Postal NUMBER,
    id_departamento NUMBER,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

CREATE TABLE clientes
(
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    apellido VARCHAR2(100),
    telefono VARCHAR2(9)
);

CREATE TABLE transaccion
(
    id_transaccion NUMBER PRIMARY KEY,
    cuenta_origen VARCHAR2(20),
    cuenta_destino VARCHAR2(20),
    monto NUMBER(10,2) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR2(120),
    id_tipo_transaccion NUMBER UNIQUE,
    id_agencia NUMBER NOT NULL,
    id_cliente NUMBER NOT NULL,
    FOREIGN KEY (id_tipo_transaccion) REFERENCES tipos_transaccion(id_tipo_transaccion),
    FOREIGN KEY (id_agencia) REFERENCES agencias (id_agencia),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE tarjetas_credito
(
    id_tarjeta NUMBER PRIMARY KEY,
    numero_tarjeta VARCHAR2(12) NOT NULL,
    limite_credito NUMBER(10,2) NOT NULL,
    saldo NUMBER(10,2) NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_expiracion DATE NOT NULL,
    fecha_corte DATE NOT NULL,
    dia_ciclo VARCHAR2(2) NOT NULL ,
    id_cliente NUMBER NOT NULL ,
    id_estado_tarjeta NUMBER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_estado_tarjeta) references estados_tarjeta(id_estado)
);
