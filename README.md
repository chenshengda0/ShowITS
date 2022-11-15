# INSTALL
```
    git clone git@github.com:chenshengda0/ShowITS.git
    cd ./ShowITS
    docker-compose up -d --build
```

# GET
```
    curl http://127.0.0.1:9527
    curl http://127.0.0.1:9527/its
    curl http://127.0.0.1:9527/getInfo
```

## AwardLog(太阳卡分红)
```
    5、买卖滑点各3%（滑点买卖2%全部累计到FOMO池，累计够价值1000U的代币自动爆破一次，爆破后分别分给最后20个买盲盒的地址；买卖1%为太阳卡分红）。
    curl -X POST http://127.0.0.1:9527/getAwardLogAll
    curl -X POST http://127.0.0.1:9527/getAwardLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setAwardLog
```

## BoomLog(爆破记录)
```
    5、买卖滑点各3%（滑点买卖2%全部累计到FOMO池，累计够价值1000U的代币自动爆破一次，爆破后分别分给最后20个买盲盒的地址；买卖1%为太阳卡分红）。
    curl -X POST http://127.0.0.1:9527/getBoomLogAll
    curl -X POST http://127.0.0.1:9527/getBoomLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setBoomLog
```

## CardLog（4%合成卡分红）
```
    4.买单买入的代币80%自动打入黑洞销毁；15%进入指定的地址；4%合成卡分红；1%每日新增直推前四名分红。
    curl -X POST http://127.0.0.1:9527/getCardLogAll
    curl -X POST http://127.0.0.1:9527/getCardLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setCardLog
```

## ManagerLog(15%进入指定的地址)
```
    4.买单买入的代币80%自动打入黑洞销毁；15%进入指定的地址；4%合成卡分红；1%每日新增直推前四名分红。
    curl -X POST http://127.0.0.1:9527/getManagerLogAll
    curl -X POST http://127.0.0.1:9527/getManagerLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setManagerLog
```

## RankingLog(1%每日新增直推前四名分红)
```
    4.买单买入的代币80%自动打入黑洞销毁；15%进入指定的地址；4%合成卡分红；1%每日新增直推前四名分红。
    curl -X POST http://127.0.0.1:9527/getRankingLogAll
    curl -X POST http://127.0.0.1:9527/getRankingLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setRankingLog
```

## RechargeLog(购买记录：购买的卡牌数量，不是花费的USDT数量)
```
    1、每位用户最低100U参与购买盲盒
    curl -X POST http://127.0.0.1:9527/getRechargeLogAll
    curl -X POST http://127.0.0.1:9527/getRechargeLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setRechargeLog
```

