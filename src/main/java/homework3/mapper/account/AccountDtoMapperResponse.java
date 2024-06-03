package homework3.mapper.account;

import homework3.domain.bank.Account;
import homework3.domain.bank.Customer;
import homework3.domain.dto.account.AccountDtoResponse;
import homework3.mapper.DtoMapperFacade;
import org.springframework.stereotype.Service;

@Service
public class AccountDtoMapperResponse extends DtoMapperFacade<Account, AccountDtoResponse> {

    public AccountDtoMapperResponse() {
        super(Account.class, AccountDtoResponse.class);
    }

    protected void decorateDto(AccountDtoResponse dto, Account entity) {
        Customer customer = entity.getCustomer();
        if (customer == null) {
            throw new IllegalArgumentException("Customer not found");
        }
        dto.setCustomerName(customer.getName());
    }
}
