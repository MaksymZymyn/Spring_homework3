package homework3.mapper.account;

import homework3.domain.bank.Account;
import homework3.domain.dto.account.AccountDtoResponse;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.annotation.*;
import static org.modelmapper.config.Configuration.AccessLevel.PRIVATE;

@Configuration
public class AccountDtoMapperResponseConfig {

    @Bean
    public ModelMapper accountDtoResponseMapper() {
        ModelMapper mapper = new ModelMapper();
        mapper.getConfiguration()
                .setMatchingStrategy(MatchingStrategies.STRICT)
                .setFieldMatchingEnabled(true)
                .setSkipNullEnabled(true)
                .setFieldAccessLevel(PRIVATE);

        mapper.createTypeMap(Account.class, AccountDtoResponse.class)
                .addMapping(Account::getId, AccountDtoResponse::setId)
                .addMapping(Account::getNumber, AccountDtoResponse::setNumber)
                .addMapping(Account::getCurrency, AccountDtoResponse::setCurrency)
                .addMapping(src -> src.getCustomer().getName(), AccountDtoResponse::setCustomerName)
                .addMapping(Account::getCreationDate, AccountDtoResponse::setCreationDate)
                .addMapping(Account::getLastModifiedDate, AccountDtoResponse::setLastModifiedDate)
        ;

        return mapper;
    }
}
