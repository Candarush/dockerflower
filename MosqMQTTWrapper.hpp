#pragma once

#include <mosquittopp.h>§
#include <cstring>
#include <stdio.h>

namespace MQTTW
{
    class MosqMqttWrapper : public mosqpp::mosquittopp
    {
        public:
        MosqMqttWrapper(char const  *id, const char *host, int port);

        void on_connect(int rc);
        void on_message(const struct mosquitto_message *message);
        bool send_message(const  char * message);
    };
}
