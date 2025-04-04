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
            @Value("${billing.service.grpc.port.9001}") int servicePort) {
        log.info("Connecting to Billing Service GRPC service at port {} : {}", serverAddress,servicePort);

        ManagedChannel channel = ManagedChannelBuilder.forAddress(serverAddress,servicePort).usePlaintext().build();
        System.out.println("Connected to Billing Service GRPC service at port " + servicePort);
        blockingStub = BillingServiceGrpc.newBlockingStub(channel);
    }

    public BillingResponse createBillingAccount(String patientId, String name, String email) {
        BillingRequest request = BillingRequest.newBuilder().setPatientId(patientId).setName(name).setEmail(email).build();
        log.info("Creating billing account {}", request);
        BillingResponse response = blockingStub.createBillingAccount(request);
        log.info("Received response from billing service via GRPC : {}", response);
        return response;
    }
}