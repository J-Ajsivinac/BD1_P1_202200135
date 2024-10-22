CREATE TABLE tipos_cuentas
(
    id_tipo_cuenta NUMBER PRIMARY KEY,
    nombre         VARCHAR2(20) NOT NULL UNIQUE
);

CREATE TABLE estados_prestamos
(
    id_estado_prestamo NUMBER PRIMARY KEY,
    estado             VARCHAR2(9) NOT NULL UNIQUE
);

CREATE TABLE estados_tarjetas
(
    id_estado NUMBER PRIMARY KEY,
    estado    VARCHAR2(10) NOT NULL UNIQUE
);

CREATE TABLE tipos_roles
(
    id_rol NUMBER PRIMARY KEY,
    rol    VARCHAR2(35) NOT NULL UNIQUE
);

CREATE TABLE departamentos
(
    id_departamento NUMBER PRIMARY KEY,
    nombre          VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE municipios
(
    id_municipio    NUMBER PRIMARY KEY,
    nombre          VARCHAR2(27) NOT NULL UNIQUE,
    codigo_Postal   NUMBER       NOT NULL,
    id_departamento NUMBER       NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
);

CREATE TABLE tipos_agencias_sucursales
(
    id_tipo_agencia_sucursal NUMBER PRIMARY KEY,
    tipo                     VARCHAR2(8) NOT NULL UNIQUE
);

CREATE TABLE agencias
(
    id_agencia               NUMBER PRIMARY KEY,
    nombre                   VARCHAR2(50) NOT NULL,
    telefono                 VARCHAR2(14) NOT NULL UNIQUE,
    direccion                VARCHAR2(50) NOT NULL,
    id_departamento          NUMBER       NOT NULL,
    id_tipo_agencia_sucursal NUMBER       NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento),
    FOREIGN KEY (id_tipo_agencia_sucursal) REFERENCES tipos_agencias_sucursales (id_tipo_agencia_sucursal)
);

CREATE TABLE clientes
(
    id_cliente NUMBER PRIMARY KEY,
    nombre     VARCHAR2(50) NOT NULL,
    apellido   VARCHAR2(50) NOT NULL,
    telefono   VARCHAR2(14) NOT NULL UNIQUE
);

CREATE TABLE cuentas
(
    numero_cuenta  VARCHAR(10) PRIMARY KEY,
    saldo          NUMBER(10, 2) NOT NULL CHECK ( saldo >= 0 ),
    fecha_apertura DATE          NOT NULL,
    id_tipo_cuenta NUMBER        NOT NULL,
    id_cliente     NUMBER        NOT NULL,
    FOREIGN KEY (id_tipo_cuenta) REFERENCES tipos_cuentas (id_tipo_cuenta),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE prestamos
(
    id_prestamo        NUMBER PRIMARY KEY,
    monto              NUMBER(10, 2) NOT NULL CHECK ( monto > 0 ),
    tasa_interes       NUMBER(5, 2)  NOT NULL CHECK ( tasa_interes > 0 AND tasa_interes < 100 ),
    fecha_desembolso   DATE          NOT NULL,
    fecha_vencimiento  DATE          NOT NULL,
    saldo_pendiente    NUMBER(10, 2) NOT NULL CHECK ( saldo_pendiente >= 0 ),
    id_cliente         NUMBER        NOT NULL,
    id_estado_prestamo NUMBER        NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_estado_prestamo) REFERENCES estados_prestamos (id_estado_prestamo),
    CONSTRAINT chk_fecha_vencimiento CHECK (fecha_vencimiento > fecha_desembolso)
);

CREATE TABLE pagos_prestamos
(
    id_pago_prestamo NUMBER PRIMARY KEY,
    monto            NUMBER(10, 2) NOT NULL CHECK ( monto > 0 ),
    fecha            TIMESTAMP     NOT NULL,
    id_prestamo      NUMBER        NOT NULL,
    FOREIGN KEY (id_prestamo) REFERENCES prestamos (id_prestamo)
);

CREATE TABLE tipos_transacciones
(
    id_tipo_transaccion NUMBER PRIMARY KEY,
    tipo                VARCHAR2(15) NOT NULL UNIQUE
);

CREATE TABLE empleados
(
    id_empleado     NUMBER PRIMARY KEY,
    nombre          VARCHAR2(50) NOT NULL,
    apellido        VARCHAR2(50) NOT NULL,
    telefono        VARCHAR2(14) NOT NULL UNIQUE,
    id_rol          NUMBER       NOT NULL,
    id_agencia      NUMBER       NOT NULL,
    id_departamento NUMBER       NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES tipos_roles (id_rol),
    FOREIGN KEY (id_agencia) REFERENCES agencias (id_agencia),
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
);


CREATE TABLE transacciones
(
    id_transaccion      NUMBER PRIMARY KEY,
    cuenta_origen       VARCHAR(10)   NOT NULL,
    cuenta_destino      VARCHAR2(10)  NOT NULL,
    monto               NUMBER(10, 2) NOT NULL CHECK ( monto > 0 ),
    fecha               TIMESTAMP     NOT NULL,
    descripcion         VARCHAR2(50)  NOT NULL,
    id_tipo_transaccion NUMBER        NOT NULL,
    id_agencia          NUMBER        NOT NULL,
    FOREIGN KEY (id_tipo_transaccion) REFERENCES tipos_transacciones (id_tipo_transaccion),
    FOREIGN KEY (id_agencia) REFERENCES agencias (id_agencia),
    FOREIGN KEY (cuenta_origen) REFERENCES cuentas (numero_cuenta)
);

CREATE TABLE tarjetas_credito
(
    numero_tarjeta    NUMBER(16) PRIMARY KEY,
    limite_credito    NUMBER(10, 2) NOT NULL CHECK ( limite_credito > 0 ),
    saldo             NUMBER(10, 2) NOT NULL CHECK ( saldo >= 0 ),
    fecha_emision     DATE          NOT NULL,
    fecha_expiracion  DATE          NOT NULL,
    fecha_corte       DATE          NOT NULL,
    dia_ciclo         NUMBER(2)     NOT NULL CHECK (dia_ciclo BETWEEN 1 AND 31),
    id_cliente        NUMBER        NOT NULL,
    id_estado_tarjeta NUMBER        NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_estado_tarjeta) references estados_tarjetas (id_estado)
);

CREATE TABLE compras_tc
(
    id_compra      NUMBER PRIMARY KEY,
    monto          NUMBER(10, 2) NOT NULL CHECK ( monto > 0 ),
    fecha          TIMESTAMP     NOT NULL,
    descripcion    VARCHAR2(150),
    numero_tarjeta NUMBER(16)  NOT NULL,
    FOREIGN KEY (numero_tarjeta) REFERENCES tarjetas_credito (numero_tarjeta)
);

CREATE TABLE pagos_tc
(
    id_pago        NUMBER PRIMARY KEY,
    monto          NUMBER(10, 2) NOT NULL CHECK ( monto > 0 ),
    fecha          TIMESTAMP     NOT NULL,
    numero_tarjeta NUMBER(16)  NOT NULL,
    FOREIGN KEY (numero_tarjeta) REFERENCES tarjetas_credito (numero_tarjeta)
);

CREATE TABLE auditorias_transacciones
(
    id_auditoria   NUMBER PRIMARY KEY,
    comentario     VARCHAR2(150),
    id_transaccion NUMBER NOT NULL,
    id_empleado    NUMBER NOT NULL,
    FOREIGN KEY (id_transaccion) REFERENCES transacciones (id_transaccion),
    FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)
);

-- TRIGGERS

CREATE OR REPLACE TRIGGER actualizar_saldo_transaccion
    AFTER INSERT
    ON transacciones
    FOR EACH ROW
BEGIN
    -- Actualizar saldo de la cuenta origen (resta el monto)
    UPDATE cuentas
    SET saldo = saldo - :NEW.monto
    WHERE numero_cuenta = :NEW.cuenta_origen;

    -- Actualizar saldo de la cuenta destino (suma el monto)
    UPDATE cuentas
    SET saldo = saldo + :NEW.monto
    WHERE numero_cuenta = :NEW.cuenta_destino;
END;

CREATE OR REPLACE TRIGGER actualizar_saldo_tarjeta_credito
    AFTER INSERT
    ON compras_tc
    FOR EACH ROW
BEGIN
    -- Actualizar saldo de la tarjeta de crédito (resta el monto de la compra)
    UPDATE tarjetas_credito
    SET saldo = saldo - :NEW.monto
    WHERE numero_tarjeta = :NEW.numero_tarjeta;
END;

CREATE OR REPLACE TRIGGER actualizar_saldo_pago_tarjeta_credito
    AFTER INSERT
    ON pagos_tc
    FOR EACH ROW
BEGIN
    -- Actualizar saldo de la tarjeta de crédito (suma el monto del pago)
    UPDATE tarjetas_credito
    SET saldo = saldo + :NEW.monto
    WHERE numero_tarjeta = :NEW.numero_tarjeta;
END;

CREATE OR REPLACE TRIGGER actualizar_saldo_pendiente_prestamo
    AFTER INSERT
    ON pagos_prestamos
    FOR EACH ROW
BEGIN
    -- Actualizar el saldo pendiente del préstamo
    UPDATE prestamos
    SET saldo_pendiente = saldo_pendiente - :NEW.monto
    WHERE id_prestamo = :NEW.id_prestamo;
END;