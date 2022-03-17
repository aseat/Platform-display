package com.example.model.shinkansen;

public class Station {

    private String tokyo;
    private String shinagawa;
    private String shinyokohama;
    private String odawara;
    private String atami;
    private String mishima;
    private String shinfuji;
    private String shizuoka;
    private String kakegawa;
    private String hamamatsu;
    private String toyohashi;
    private String mikawaanjyo;
    private String nagoya;
    private String gifuhashima;
    private String maibara;
    private String kyoto;
    private String shinosaka;

    public Station(String tokyo, String shinagawa, String shinyokohama, String odawara, String atami,
            String mishima, String shinfuji, String shizuoka, String kakegawa, String hamamatsu, String toyohashi,
            String mikawaanjyo, String nagoya, String gifuhashima, String maibara, String kyoto,
            String shinosaka) {
        this.tokyo = tokyo;
        this.shinagawa = shinagawa;
        this.shinyokohama = shinyokohama;
        this.odawara = odawara;
        this.atami = atami;
        this.mishima = mishima;
        this.shinfuji = shinfuji;
        this.shizuoka = shizuoka;
        this.kakegawa = kakegawa;
        this.hamamatsu = hamamatsu;
        this.toyohashi = toyohashi;
        this.mikawaanjyo = mikawaanjyo;
        this.nagoya = nagoya;
        this.gifuhashima = gifuhashima;
        this.maibara = maibara;
        this.kyoto = kyoto;
        this.shinosaka = shinosaka;

    }

    public String getOdawara() {
        if (!"".equals(this.odawara)) {
            return "小田原";
        }
        return "";
    }

    public String getAtami() {
        if (!"".equals(this.atami)) {
            return "熱海";
        }
        return "";
    }

    public String getMishima() {
        if (!"".equals(this.mishima)) {
            return "三島";
        }
        return "";
    }

    public String getShinfuji() {
        if (!"".equals(this.shinfuji)) {
            return "新富士";
        }
        return "";
    }

    public String getShizuoka() {
        if (!"".equals(this.shizuoka)) {
            return "静岡";
        }
        return "";
    }

    public String getKakegawa() {
        if (!"".equals(this.kakegawa)) {
            return "掛川";
        }
        return "";
    }

    public String getToyohashi() {
        if (!"".equals(this.toyohashi)) {
            return "豊橋";
        }
        return "";
    }

    public String getMikawaanjyo() {
        if (!"".equals(this.mikawaanjyo)) {
            return "三河安城";
        }
        return "";
    }

    public String getGifuhashima() {
        if (!"".equals(this.gifuhashima)) {
            return "岐阜羽島";
        }
        return "";
    }

    public String getMaibara() {
        if (!"".equals(this.maibara)) {
            return "米原";
        }
        return "";
    }

    
}
