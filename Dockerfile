# build stage
# FROM ballerina/ballerina-platform AS build-env
# ADD . /home/ballerina/
# RUN  ballerina build hello_service.bal
# RUN  ls .
FROM ballerina/ballerina
EXPOSE 9090
COPY  hello_service.bal /home/ballerina
RUN ls .
ENTRYPOINT [ "ballerina","run","hello_service.bal" ]