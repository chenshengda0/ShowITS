#!/bin/bash
step=1 #间隔的秒数，不能大于60
for (( i = 0; i < 60; i=(i+step) )); do
{
    curl http://127.0.0.1:9527/consumer/sendLastHeightMessage
    #获取事件
    curl http://127.0.0.1:9527/consumer/sendEvents
    curl http://127.0.0.1:9527/consumer/sendEvents
} &
    sleep $step

done
exit