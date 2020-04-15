package com.example.lesson60.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.UUID;

@Builder
@NoArgsConstructor(access = AccessLevel.PRIVATE, force = true)
@AllArgsConstructor
@Document(collection = "users")
@Data
public class User {
    @Id
    @Builder.Default
    private String id = UUID.randomUUID().toString();
    private String email;
}
