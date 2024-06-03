package homework3.mapper.employer;

import homework3.domain.bank.Employer;
import homework3.domain.dto.employer.EmployerDtoRequest;
import homework3.mapper.DtoMapperFacade;
import org.springframework.stereotype.Service;

@Service
public class EmployerDtoMapperRequest extends DtoMapperFacade<Employer, EmployerDtoRequest> {

    public EmployerDtoMapperRequest() {
        super(Employer.class, EmployerDtoRequest.class);
    }
}
