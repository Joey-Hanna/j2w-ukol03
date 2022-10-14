package cz.czechitas.java2webapps.ukol3.entity;

public class Vizitka {

    private String jmeno;
    private String firma;
    private String ulice;
    private String obecPSc;
    private final String celaAdresa = "ulice, obecPSc";
    private String email;
    private String telefon;
    private String web;

    public Vizitka() {
    }

    public Vizitka(String jmeno, String firma, String ulice, String obecPSc, String email, String telefon, String web) {
        this.jmeno = jmeno;
        this.firma = firma;
        this.ulice = ulice;
        this.obecPSc = obecPSc;
        this.email = email;
        this.telefon = telefon;
        this.web = web;
    }


    private String celaAdresa(String ulice, String obecPSc) {
        this.ulice = ulice;
        this.obecPSc = obecPSc;
        return celaAdresa("", "");
    }
}

