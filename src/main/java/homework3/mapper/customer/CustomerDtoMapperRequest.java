package homework3.mapper.customer;

import homework3.domain.bank.Customer;
import homework3.domain.dto.customer.CustomerDtoRequest;
import homework3.mapper.DtoMapperFacade;
import org.springframework.stereotype.Service;

@Service
public class CustomerDtoMapperRequest extends DtoMapperFacade<Customer, CustomerDtoRequest> {

    public CustomerDtoMapperRequest() {
        super(Customer.class, CustomerDtoRequest.class);
    }
}
