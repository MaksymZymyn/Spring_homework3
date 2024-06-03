package homework3.mapper.account;

import homework3.domain.bank.*;
import homework3.domain.dto.account.AccountDtoRequest;
import homework3.mapper.DtoMapperFacade;
import org.springframework.stereotype.Service;

@Service
public class AccountDtoMapperRequest extends DtoMapperFacade<Account, AccountDtoRequest> {
    public AccountDtoMapperRequest() {
        super(Account.class, AccountDtoRequest.class);
    }
}
