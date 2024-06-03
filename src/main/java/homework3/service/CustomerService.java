package homework3.service;

import homework3.domain.bank.Account;
import homework3.domain.bank.Customer;
import homework3.domain.bank.Employer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import java.util.*;

public interface CustomerService {

    Customer save(Customer customer);

    void delete(Customer customer);

    void deleteAll(List<Customer> customers);

    void saveAll(List<Customer> customers);

    Page<Customer> findAll(Pageable pageable);

    void deleteById(Long id);

    Customer getById(Long id);

    Customer getByEmail(String email);

    Customer update(Customer customer);

    void createAccount(Long customerId, Account account);

    void deleteAccount(Long customerId, UUID accountNumber);

    void addEmployer(Long customerId, Employer employer);

    void deleteEmployer(Long customerId, Long employerId);
}
