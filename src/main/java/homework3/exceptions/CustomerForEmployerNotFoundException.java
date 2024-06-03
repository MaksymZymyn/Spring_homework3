package homework3.exceptions;

public class CustomerForEmployerNotFoundException extends RuntimeException {
    public CustomerForEmployerNotFoundException(String message) {
        super(message);
    }
}