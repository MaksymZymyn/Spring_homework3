package homework3.domain.dto.employer;

import lombok.*;
import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmployerDtoResponse {
    private Long id;
    private String name;
    private String address;
    private List<String> customersNames;
    private LocalDateTime creationDate;
    private LocalDateTime lastModifiedDate;
}
