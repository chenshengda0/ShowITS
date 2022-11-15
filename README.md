# GET
```
    curl http://127.0.0.1:9527
    curl http://127.0.0.1:9527/its
    curl http://127.0.0.1:9527/getInfo
```

## AwardLog
```
    curl -X POST http://127.0.0.1:9527/getAwardLogAll
    curl -X POST http://127.0.0.1:9527/getAwardLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setAwardLog
```

## BoomLog
```
    curl -X POST http://127.0.0.1:9527/getBoomLogAll
    curl -X POST http://127.0.0.1:9527/getBoomLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setBoomLog
```

## CardLog
```
    curl -X POST http://127.0.0.1:9527/getCardLogAll
    curl -X POST http://127.0.0.1:9527/getCardLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setCardLog
```

## ManagerLog
```
    curl -X POST http://127.0.0.1:9527/getManagerLogAll
    curl -X POST http://127.0.0.1:9527/getManagerLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setManagerLog
```

## RankingLog
```
    curl -X POST http://127.0.0.1:9527/getRankingLogAll
    curl -X POST http://127.0.0.1:9527/getRankingLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setRankingLog
```

## RechargeLog
```
    curl -X POST http://127.0.0.1:9527/getRechargeLogAll
    curl -X POST http://127.0.0.1:9527/getRechargeLog
    curl -d "handleId=1" -X POST http://127.0.0.1:9527/setRechargeLog
```

