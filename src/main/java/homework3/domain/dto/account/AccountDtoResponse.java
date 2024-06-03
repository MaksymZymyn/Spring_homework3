package homework3.domain.dto.account;

import homework3.domain.bank.Currency;
import lombok.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountDtoResponse {
    private Long id;
    private UUID number;
    private Currency currency;
    private double balance;
    private String customerName;
    private LocalDateTime creationDate;
    private LocalDateTime lastModifiedDate;
}
