package com.deveire.model;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationFieldType;

public enum DateTimeUnit {

    SECONDS(DateTimeFieldType.secondOfMinute(), DurationFieldType.seconds(), "Seconds"),
    MINUTES(DateTimeFieldType.minuteOfHour(),   DurationFieldType.minutes(), "Minutes"),
    HOURS(DateTimeFieldType.hourOfDay(),        DurationFieldType.hours(), "Hours"),
    DAYS(DateTimeFieldType.dayOfYear(),         DurationFieldType.days(), "Days"),
    YEARS(DateTimeFieldType.yearOfCentury(),    DurationFieldType.years(), "Years");

    private DateTimeFieldType dateTimeFieldType;
    private DurationFieldType durationFieldType;
    private String label;

    private DateTimeUnit(DateTimeFieldType dateTimeFieldType, DurationFieldType durationFieldType, String label) {
        this.dateTimeFieldType = dateTimeFieldType;
        this.durationFieldType = durationFieldType;
        this.label = label;
    }

    public DateTimeFieldType getDateTimeFieldType() {
        return dateTimeFieldType;
    }

    public DurationFieldType getDurationFieldType() {
        return durationFieldType;
    }

    public String getLabel() {
        return label;
    }

    @Override
    public String toString() {
        return getLabel();
    }
}
