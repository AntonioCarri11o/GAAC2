package com.example.gaac.model;

public class CodeGenerator {

    public CodeGenerator() {
    }

    public String GenerateCode() {
        String theAlphaNumericS;
        StringBuilder builder;

        theAlphaNumericS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789";

        builder = new StringBuilder(5);

        for (int m = 0; m < 5; m++) {

            // generate numeric
            int myindex
                    = (int)(theAlphaNumericS.length()
                    * Math.random());

            // add the characters
            builder.append(theAlphaNumericS
                    .charAt(myindex));
        }
        return builder.toString();
    }

}
