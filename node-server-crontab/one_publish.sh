#!/bin/bash
step=3 #间隔的秒数，不能大于60
for (( i = 0; i < 60; i=(i+step) )); do
{
    #每3秒设置最新高度
    curl http://127.0.0.1:9527/publish/sendLastHeightMessage

    #每3秒发送交易事件消息
    curl http://127.0.0.1:9527/publish/sendEventHeight
    
} & 
    sleep $step

done
exit