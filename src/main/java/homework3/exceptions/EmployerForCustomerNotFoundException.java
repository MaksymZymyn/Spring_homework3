package homework3.exceptions;

public class EmployerForCustomerNotFoundException extends RuntimeException {
    public EmployerForCustomerNotFoundException(String message) {
        super(message);
    }
}