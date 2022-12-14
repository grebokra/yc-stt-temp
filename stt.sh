#!/bin/bash

. credrc

stt_send_body_json() {
    curl -X POST \
        -H "Authorization: Api-Key $YC_STT_API_KEY" \
        -d "@$1" \
        https://transcribe.api.cloud.yandex.net/speech/stt/v2/longRunningRecognize
}

get_result_from_op_id() {
    curl -X  GET \
        -H "Authorization: Api-Key $YC_STT_API_KEY" \
        "https://operation.api.cloud.yandex.net/operations/$1"
}
