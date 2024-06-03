package homework3.domain.bank;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum Currency {
    USD("usd"),
    EUR("eur"),
    UAH("uah"),
    CHF("chf"),
    GBP("gbp");

    private final String value;

    Currency(String value) {
        this.value = value;
    }

    @JsonValue
    public String getValue() {
        return value;
    }

    @JsonCreator
    public static Currency fromValue(String value) {
        for (Currency currency : Currency.values()) {
            if (currency.value.equalsIgnoreCase(value)) {
                return currency;
            }
        }
        throw new IllegalArgumentException("Unknown currency: " + value);
    }
}
