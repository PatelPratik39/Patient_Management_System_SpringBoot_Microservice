package com.pm.pateintservice.grpc;

import billing.BillingRequest;
import billing.BillingResponse;
import billing.BillingServiceGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class BillingServiceGrpcClient {
    private final BillingServiceGrpc.BillingServiceBlockingStub blockingStub;

//    localhost:9001/BillingService/CreatePatientAccount
    //aws.grpc123442/BillingService/CreatePatientAccount
    public BillingServiceGrpcClient(
            @Value("${billing.service.address:localhost}") String serverAddress,
            @Value("${billing.service.grpc.port:9001}") int serverPort) {
        log.info("Connecting to Billing Service GRPC service at port {} : {}", serverAddress,serverPort);

        ManagedChannel channel = ManagedChannelBuilder.forAddress(serverAddress,serverPort).usePlaintext().build();
        System.out.println("Connected to Billing Service GRPC service at port " + serverPort);
        blockingStub = BillingServiceGrpc.newBlockingStub(channel);
    }

    public BillingResponse createBillingAccount(String patientId, String name, String email) {
        BillingRequest request = BillingRequest.newBuilder()
                .setPatientId(patientId)
                .setName(name)
                .setEmail(email)
                .build();

        BillingResponse response = blockingStub.createBillingAccount(request); // 👈 this line should trigger server method
        log.info("Received response from billing service via GRPC : {}", response);
        return response;
    }

}