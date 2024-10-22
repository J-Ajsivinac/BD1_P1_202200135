-- Inserts para tipos_cuentas
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (1, 'Ahorro');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (2, 'Depósito Monentario');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (3, 'Cuenta Corriente');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (4, 'Cuenta de Inversión');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (5, 'Juvenil');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (6, 'Empresarial');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (7, 'Conjunta');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (8, 'Cuenta de Pensiones');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (9, 'Cuenta en Dólares');
INSERT INTO tipos_cuentas (id_tipo_cuenta, nombre) VALUES (10, 'Ahorro Plus');

-- Inserts para estados_prestamos
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (1, 'Activo');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (2, 'Pagado');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (3, 'Atrasado');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (4, 'Revision');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (5, 'Cancelado');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (6, 'En mora');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (7, 'Congelado');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (8, 'Judicial');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (9, 'Aprobado');
INSERT INTO estados_prestamos (id_estado_prestamo, estado) VALUES (10, 'Rechazado');

-- Inserts para estados_tarjetas
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (1, 'Activa');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (2, 'Bloqueada');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (3, 'Vencida');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (4, 'Robada');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (5, 'Perdida');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (6, 'Cancelada');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (7, 'Suspendida');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (8, 'Revision');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (9, 'Renovada');
INSERT INTO estados_tarjetas (id_estado, estado) VALUES (10, 'Inactiva');

-- Inserts para tipos_roles
INSERT INTO tipos_roles (id_rol, rol) VALUES (1, 'Gerente General');
INSERT INTO tipos_roles (id_rol, rol) VALUES (2, 'Gerente de Sucursal');
INSERT INTO tipos_roles (id_rol, rol) VALUES (3, 'Cajero');
INSERT INTO tipos_roles (id_rol, rol) VALUES (4, 'Asesor de Clientes');
INSERT INTO tipos_roles (id_rol, rol) VALUES (5, 'Analista de Crédito');
INSERT INTO tipos_roles (id_rol, rol) VALUES (6, 'Oficial de Cumplimiento');
INSERT INTO tipos_roles (id_rol, rol) VALUES (7, 'Auditor Interno');
INSERT INTO tipos_roles (id_rol, rol) VALUES (8, 'Jefe de Operaciones');
INSERT INTO tipos_roles (id_rol, rol) VALUES (9, 'Ejecutivo de Cuentas Empresariales');
INSERT INTO tipos_roles (id_rol, rol) VALUES (10, 'Asistente Administrativo');

-- Inserts para departamentos
INSERT INTO departamentos (id_departamento, nombre) VALUES (1, 'Alta Verapaz');
INSERT INTO departamentos (id_departamento, nombre) VALUES (2, 'Baja Verapaz');
INSERT INTO departamentos (id_departamento, nombre) VALUES (4, 'Chimaltenango');
INSERT INTO departamentos (id_departamento, nombre) VALUES (3, 'Chiquimula');
INSERT INTO departamentos (id_departamento, nombre) VALUES (6, 'El Progreso');
INSERT INTO departamentos (id_departamento, nombre) VALUES (7, 'Escuintla');
INSERT INTO departamentos (id_departamento, nombre) VALUES (5, 'Guatemala');
INSERT INTO departamentos (id_departamento, nombre) VALUES (8, 'Huehuetenango');
INSERT INTO departamentos (id_departamento, nombre) VALUES (9, 'Izabal');
INSERT INTO departamentos (id_departamento, nombre) VALUES (10, 'Jalapa');

-- Inserts para municipios
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (1, 'Cobán', 16001, 1);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (2, 'Salamá', 15001, 2);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (3, 'Chimaltenango', 04001, 3);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (4, 'Chiquimula', 20001, 4);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (5, 'Guastatoya', 02001, 5);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (6, 'Escuintla', 05001, 6);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (7, 'Ciudad de Guatemala', 01001, 7);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (8, 'Huehuetenango', 13001, 8);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (9, 'Puerto Barrios', 18001, 9);
INSERT INTO municipios (id_municipio, nombre, codigo_Postal, id_departamento) VALUES (10, 'Jalapa', 	21001, 10);

-- Inserts para tipos_agencias_sucursales
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (1, 'Sucursal');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (2, 'Agencia');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (3, 'Kiosco');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (4, 'ATM');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (5, 'Digital');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (6, 'Móvil');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (7, 'Express');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (8, 'Empresas');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (9, 'Premium');
INSERT INTO tipos_agencias_sucursales (id_tipo_agencia_sucursal, tipo) VALUES (10, 'Rural');

-- Inserts para agencias
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (1, 'Agencia Central', '+502 8036-8423', 'Calle Principal #123, Centro', 1, 1);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (2, 'Sucursal Santa Tecla', '+502 2873-4763', 'Av. La Revolución #456', 2, 1);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (3, 'Agencia Metrocentro', '+502 7744-4210', 'Centro Comercial Metrocentro, Local #789', 1, 2);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (4, 'Kiosco Plaza Mundo', '+502 9729-5410', 'Centro Comercial Plaza Mundo, Kiosco #10', 1, 3);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (5, 'ATM Galerías', '+502 5989-7334', 'Centro Comercial Galerías, Planta Baja', 1, 4);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (6, 'Agencia Digital', '+502 7442-9514', 'En línea', 1, 5);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (7, 'Móvil Santa Ana', '+502 8914-9817', 'Unidad Móvil', 3, 6);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (8, 'Express San Miguel', '+502 5220-8290', 'Calle Siempre Viva #321', 4, 7);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (9, 'Empresarial Sonsonate', '+502 8669-9795', 'Zona Industrial, Edificio Corporativo #5', 5, 8);
INSERT INTO agencias (id_agencia, nombre, telefono, direccion, id_departamento, id_tipo_agencia_sucursal) VALUES (10, 'Premium La Libertad', '+502 7059-2028', 'Calle El Pedregal #789, Santa Elena', 2, 9);

-- Inserts para clientes
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (1, 'Juan', 'Pérez', '+502 4634-7041');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (2, 'María', 'López', '+502 2701-1140');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (3, 'Carlos', 'Rodríguez', '+502 6277-2079');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (4, 'Ana', 'Martínez', '+502 7371-9552');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (5, 'José', 'González', '+502 1699-8122');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (6, 'Laura', 'Hernández', '+502 3725-6825');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (7, 'Pedro', 'Sánchez', '+502 2309-4036');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (8, 'Sofía', 'Ramírez', '+502 4707-2479');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (9, 'Diego', 'Torres', '+502 4512-6794');
INSERT INTO clientes (id_cliente, nombre, apellido, telefono) VALUES (10, 'Lucía', 'Flores', '+502 8041-5428');

-- Inserts para cuentas
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000001', 5000.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 1);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000002', 10000.00, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, 2);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000003', 3000.00, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 3);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000004', 15000.00, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 4, 4);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000005', 500.00, TO_DATE('2023-05-12', 'YYYY-MM-DD'), 5, 5);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000006', 50000.00, TO_DATE('2023-06-18', 'YYYY-MM-DD'), 6, 6);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000007', 7500.00, TO_DATE('2023-07-22', 'YYYY-MM-DD'), 7, 7);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000008', 20000.00, TO_DATE('2020-08-30', 'YYYY-MM-DD'), 8, 8);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000009', 12000.00, TO_DATE('2022-09-14', 'YYYY-MM-DD'), 9, 9);
INSERT INTO cuentas (numero_cuenta, saldo, fecha_apertura, id_tipo_cuenta, id_cliente) VALUES ('1000000010', 8000.00, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 10, 10);

-- Inserts para prestamos
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (1, 10000.00, 5.5, TO_DATE('2023-01-20', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), 8000.00, 1, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (2, 20000.00, 6.0, TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), 18000.00, 2, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (3, 5000.00, 7.5, TO_DATE('2023-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 2000.00, 3, 3);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (4, 15000.00, 5.0, TO_DATE('2023-04-05', 'YYYY-MM-DD'), TO_DATE('2025-04-05', 'YYYY-MM-DD'), 12000.00, 4, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (5, 8000.00, 6.5, TO_DATE('2023-05-20', 'YYYY-MM-DD'), TO_DATE('2024-11-20', 'YYYY-MM-DD'), 4000.00, 5, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (6, 25000.00, 4.5, TO_DATE('2023-06-15', 'YYYY-MM-DD'), TO_DATE('2026-06-15', 'YYYY-MM-DD'), 22000.00, 6, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (7, 12000.00, 7.0, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 9000.00, 7, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (8, 30000.00, 5.75, TO_DATE('2023-08-10', 'YYYY-MM-DD'), TO_DATE('2027-08-10', 'YYYY-MM-DD'), 28000.00, 8, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (9, 7000.00, 8.0, TO_DATE('2023-09-05', 'YYYY-MM-DD'), TO_DATE('2024-09-05', 'YYYY-MM-DD'), 5000.00, 9, 1);
INSERT INTO prestamos (id_prestamo, monto, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_cliente, id_estado_prestamo) VALUES (10, 18000.00, 6.25, TO_DATE('2023-10-20', 'YYYY-MM-DD'), TO_DATE('2026-10-20', 'YYYY-MM-DD'), 17000.00, 10, 1);

-- Inserts para pagos_prestamos
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (1, 500.00, TO_TIMESTAMP('2023-02-20 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (2, 1000.00, TO_TIMESTAMP('2023-03-15 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (3, 300.00, TO_TIMESTAMP('2023-04-10 11:20:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (4, 750.00, TO_TIMESTAMP('2023-05-05 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (5, 400.00, TO_TIMESTAMP('2023-06-20 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (6, 1250.00, TO_TIMESTAMP('2023-07-15 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (7, 600.00, TO_TIMESTAMP('2023-08-01 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 7);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (8, 1500.00, TO_TIMESTAMP('2023-09-10 15:20:00', 'YYYY-MM-DD HH24:MI:SS'), 8);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (9, 350.00, TO_TIMESTAMP('2023-10-05 11:10:00', 'YYYY-MM-DD HH24:MI:SS'), 9);
INSERT INTO pagos_prestamos (id_pago_prestamo, monto, fecha, id_prestamo) VALUES (10, 900.00, TO_TIMESTAMP('2023-11-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10);

-- Inserts para tipos_transacciones
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (1, 'Depósito');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (2, 'Retiro');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (3, 'Transferencia');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (4, 'Pago préstamo');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (5, 'Pago servicios');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (6, 'Compra');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (7, 'Pago');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (8, 'Cambio divisa');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (9, 'Inversión');
INSERT INTO tipos_transacciones (id_tipo_transaccion, tipo) VALUES (10, 'Reembolso');

-- Inserts para empleados
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (1, 'Roberto', 'Gómez', '+502 9187-9703', 1, 1, 1);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (2, 'Luisa', 'Fernández', '+502 7799-5525', 2, 2, 2);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (3, 'Miguel', 'Castro', '+502 9968-5069', 3, 3, 1);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (4, 'Carmen', 'Ortiz', '+502 1290-2152', 4, 4, 1);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (5, 'Javier', 'Mendoza', '+502 9478-6867', 5, 5, 1);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (6, 'Patricia', 'Vargas', '+502 4663-6471', 6, 6, 1);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (7, 'Fernando', 'Ríos', '+502 8906-6223', 7, 7, 3);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (8, 'Gabriela', 'Luna', '+502 7982-3004', 8, 8, 4);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (9, 'Andrés', 'Morales', '+502 5784-6163', 9, 9, 5);
INSERT INTO empleados (id_empleado, nombre, apellido, telefono, id_rol, id_agencia, id_departamento) VALUES (10, 'Beatriz', 'Soto', '+502 3726-7747', 10, 10, 2);

-- Inserts para transacciones
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (1, '1000000001', '1000000002', 500.00, TO_TIMESTAMP('2023-11-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Transferencia entre cuentas', 3, 1);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (2, '1000000003', '1000000004', 1000.00, TO_TIMESTAMP('2023-11-02 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Depósito en efectivo', 1, 2);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (3, '1000000004', '1000000005', 300.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (4, '1000000002', '1000000001', 100.00, TO_TIMESTAMP('2023-11-03 11:45:01', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (5, '1000000005', '1000000006', 100.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (6, '1000000006', '1000000003', 900.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (7, '1000000007', '1000000004', 400.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (8, '1000000005', '1000000001', 100.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (9, '1000000006', '1000000005', 800.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);
INSERT INTO transacciones (id_transaccion, cuenta_origen, cuenta_destino, monto, fecha, descripcion, id_tipo_transaccion, id_agencia) VALUES (10, '1000000007', '1000000006', 100.00, TO_TIMESTAMP('2023-11-03 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Retiro ATM', 2, 3);

-- Inserts para tarjetas_credito (necesario para compras_tc y pagos_tc)
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4111111111111111, 5000.00, 1000.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2026-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 15, 1, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4222222222222222, 10000.00, 2500.00, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 20, 2, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4333333333333333, 7500.00, 1500.00, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2026-03-01', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 25, 3, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4444444444444444, 15000.00, 5000.00, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2026-04-01', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 10, 4, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4555555555555555, 8000.00, 3000.00, TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2026-05-01', 'YYYY-MM-DD'), TO_DATE('2023-12-05', 'YYYY-MM-DD'), 5, 5, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4666666666666666, 20000.00, 7500.00, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2026-06-01', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 30, 6, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4777777777777777, 12000.00, 4000.00, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2026-07-01', 'YYYY-MM-DD'), TO_DATE('2023-12-18', 'YYYY-MM-DD'), 18, 7, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4888888888888888, 25000.00, 10000.00, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2026-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-22', 'YYYY-MM-DD'), 22, 8, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4999999999999999, 6000.00, 2000.00, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2026-09-01', 'YYYY-MM-DD'), TO_DATE('2023-12-12', 'YYYY-MM-DD'), 12, 9, 1);
INSERT INTO tarjetas_credito (numero_tarjeta, limite_credito, saldo, fecha_emision, fecha_expiracion, fecha_corte, dia_ciclo, id_cliente, id_estado_tarjeta) VALUES (4000000000000000, 18000.00, 6000.00, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2026-10-01', 'YYYY-MM-DD'), TO_DATE('2023-12-28', 'YYYY-MM-DD'), 28, 10, 1);

-- Inserts para compras_tc
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (1, 150.00, TO_TIMESTAMP('2023-11-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Compra en supermercado', 4111111111111111);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (2, 500.00, TO_TIMESTAMP('2023-11-06 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Compra de electrónicos', 4222222222222222);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (3, 75.50, TO_TIMESTAMP('2023-11-07 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Restaurante', 4333333333333333);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (4, 200.00, TO_TIMESTAMP('2023-11-08 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Compra de ropa', 4444444444444444);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (5, 1000.00, TO_TIMESTAMP('2023-11-09 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Reserva de hotel', 4555555555555555);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (6, 50.00, TO_TIMESTAMP('2023-11-10 11:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Farmacia', 4666666666666666);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (7, 300.00, TO_TIMESTAMP('2023-11-11 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Compra de libros', 4777777777777777);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (8, 80.00, TO_TIMESTAMP('2023-11-12 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Cine y comida', 4888888888888888);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (9, 450.00, TO_TIMESTAMP('2023-11-13 10:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Compra de muebles', 4999999999999999);
INSERT INTO compras_tc (id_compra, monto, fecha, descripcion, numero_tarjeta) VALUES (10, 120.00, TO_TIMESTAMP('2023-11-14 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Suscripción anual', 4000000000000000);

-- Inserts para pagos_tc
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (1, 200.00, TO_TIMESTAMP('2023-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4111111111111111);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (2, 600.00, TO_TIMESTAMP('2023-11-16 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4222222222222222);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (3, 100.00, TO_TIMESTAMP('2023-11-17 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 4333333333333333);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (4, 300.00, TO_TIMESTAMP('2023-11-18 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), 4444444444444444);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (5, 1200.00, TO_TIMESTAMP('2023-11-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4555555555555555);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (6, 500.00, TO_TIMESTAMP('2023-11-20 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4666666666666666);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (7, 400.00, TO_TIMESTAMP('2023-11-21 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 4777777777777777);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (8, 1000.00, TO_TIMESTAMP('2023-11-22 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 4888888888888888);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (9, 250.00, TO_TIMESTAMP('2023-11-23 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4999999999999999);
INSERT INTO pagos_tc (id_pago, monto, fecha, numero_tarjeta) VALUES (10, 700.00, TO_TIMESTAMP('2023-11-24 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4000000000000000);

-- Inserts para auditorias_transacciones
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (1, 'Revisión rutinaria de transferencia', 1, 3);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (2, 'Verificación de depósito en efectivo', 2, 4);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (3, 'Confirmación de retiro ATM', 3, 5);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (4, 'Análisis de transacción de alto valor', 4, 6);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (5, 'Revisión de pago de préstamo', 5, 7);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (6, 'Verificación de pago de servicios', 6, 8);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (7, 'Auditoría de compra con tarjeta de crédito', 7, 9);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (8, 'Revisión de cambio de divisa', 8, 10);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (9, 'Verificación de transacción internacional', 9, 1);
INSERT INTO auditorias_transacciones (id_auditoria, comentario, id_transaccion, id_empleado) VALUES (10, 'Análisis de patrón de transacciones', 10, 2);
