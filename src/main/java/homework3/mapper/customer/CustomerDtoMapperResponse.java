package homework3.mapper.customer;

import homework3.domain.bank.Account;
import homework3.domain.bank.Customer;
import homework3.domain.bank.Employer;
import homework3.domain.dto.customer.CustomerDtoResponse;
import homework3.mapper.DtoMapperFacade;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class CustomerDtoMapperResponse extends DtoMapperFacade<Customer, CustomerDtoResponse> {

    public CustomerDtoMapperResponse() {
        super(Customer.class, CustomerDtoResponse.class);
    }

    @Override
    protected void decorateDto(CustomerDtoResponse dto, Customer entity) {
        if (entity.getAccounts() != null) {
            // Отримання номерів акаунтів
            Set<UUID> accountNumbers = entity.getAccounts().stream()
                    .map(Account::getNumber)
                    .collect(Collectors.toSet());
            dto.setAccountNumbers(accountNumbers);
        }

        if (entity.getEmployers() != null) {
            // Отримання імен роботодавців
            List<String> employerNames = entity.getEmployers().stream()
                    .map(Employer::getName)
                    .toList();
            dto.setEmployerNames(employerNames);
        }
    }
}
