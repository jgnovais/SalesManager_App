--liquibase formatted sql

--changeset SteveZ:1
CREATE TABLE SALES (ID BIGINT AUTO_INCREMENT, ITEM VARCHAR(255), QUANTITY NUMBER, AMOUNT FLOAT, CONSTRAINT SALES_PK PRIMARY KEY (ID));
--rollback DROP TABLE SALES;

--changeset JohnD:2
INSERT INTO SALES (ITEMS, QUANTITY, AMOUNT) VALUES ('Leather sofa By Michellotti', 4, 5026.63);
--rollback DELETE FROM SALES WHERE ITEM='Leather sofa By Michellotti';

--changeset JohnD:3
INSERT INTO SALES (ITEM, QUANTITY, AMOUNTS) VALUES ('Round coffee table By Michellotti', 1, 800.23);
--rollback DELETE FROM SALES WHERE ITEM='Round coffee table By Michellotti';
