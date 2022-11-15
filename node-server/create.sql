START TRANSACTION;
DROP TABLE IF EXISTS BoomLog;
CREATE TABLE BoomLog (
    id int NOT NULL COMMENT '自增ID',
    transactionHash char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
    logIndex int NOT NULL DEFAULT '0' COMMENT '日志索引',
    sender char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
    token char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
    tokenSymbol char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
    tokenDecimals tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
    tradeTime int NOT NULL DEFAULT '0' COMMENT '交易时间',
    amount decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
    status tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
ALTER TABLE BoomLog
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);
ALTER TABLE BoomLog
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';
COMMIT;
START TRANSACTION;
DROP TABLE IF EXISTS ManagerLog;
CREATE TABLE ManagerLog (
    id int NOT NULL COMMENT '自增ID',
    transactionHash char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
    logIndex int NOT NULL DEFAULT '0' COMMENT '日志索引',
    sender char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
    token char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
    tokenSymbol char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
    tokenDecimals tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
    tradeTime int NOT NULL DEFAULT '0' COMMENT '交易时间',
    amount decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
    status tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
ALTER TABLE ManagerLog
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);
ALTER TABLE ManagerLog
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';
COMMIT;
START TRANSACTION;
DROP TABLE IF EXISTS CardLog;
CREATE TABLE CardLog (
    id int NOT NULL COMMENT '自增ID',
    transactionHash char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
    logIndex int NOT NULL DEFAULT '0' COMMENT '日志索引',
    sender char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
    token char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
    tokenSymbol char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
    tokenDecimals tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
    tradeTime int NOT NULL DEFAULT '0' COMMENT '交易时间',
    amount decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
    status tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
ALTER TABLE CardLog
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);
ALTER TABLE CardLog
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';
COMMIT;
START TRANSACTION;
DROP TABLE IF EXISTS RankingLog;
CREATE TABLE RankingLog (
    id int NOT NULL COMMENT '自增ID',
    transactionHash char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
    logIndex int NOT NULL DEFAULT '0' COMMENT '日志索引',
    sender char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
    token char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
    tokenSymbol char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
    tokenDecimals tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
    tradeTime int NOT NULL DEFAULT '0' COMMENT '交易时间',
    amount decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
    status tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
ALTER TABLE RankingLog
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);
ALTER TABLE RankingLog
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';
COMMIT;
START TRANSACTION;
DROP TABLE IF EXISTS AwardLog;
CREATE TABLE AwardLog (
    id int NOT NULL COMMENT '自增ID',
    transactionHash char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '交易hash',
    logIndex int NOT NULL DEFAULT '0' COMMENT '日志索引',
    sender char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发送者',
    token char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种合约地址',
    tokenSymbol char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种名称',
    tokenDecimals tinyint NOT NULL DEFAULT '0' COMMENT '币种精度',
    tradeTime int NOT NULL DEFAULT '0' COMMENT '交易时间',
    amount decimal(50,18) NOT NULL DEFAULT '0.000000000000000000' COMMENT '交易数量',
    status tinyint NOT NULL DEFAULT '0' COMMENT '是否已处理: 0未处理 1 已处理'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';
ALTER TABLE AwardLog
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);
ALTER TABLE AwardLog
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';
COMMIT;
