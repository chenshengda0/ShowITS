#!/bin/bash
array=("BoomLog" "ManagerLog" "CardLog" "RankingLog" "AwardLog")
for tab in ${array[@]}
do
    echo "START TRANSACTION;";
    echo "DROP TABLE IF EXISTS ${tab};";
    echo "CREATE TABLE ${tab} (
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
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='充值记录';";
    echo "ALTER TABLE ${tab}
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY transactionHash (transactionHash,logIndex),
    ADD KEY status (status);";
    echo "ALTER TABLE ${tab}
    MODIFY id int NOT NULL AUTO_INCREMENT COMMENT '自增ID';";
    echo "COMMIT;";
done;