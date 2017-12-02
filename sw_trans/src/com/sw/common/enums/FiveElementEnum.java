package com.sw.common.enums;

public enum FiveElementEnum {
	
	JIN(1),MU(2),SHUI(3),HUO(4),TU(5);
	
	private int value;
	
	private FiveElementEnum(int value){
		this.value = value;
	}
	
    public int getValue() {
        return value;
    }

}
