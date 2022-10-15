[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="seznam">
    <a href=jednotlivaVizitka?index?string>
        [#list vizitky as jednotlivaVizitka]
            <div class="vizitka">
                [#if jednotlivaVizitka.jmeno?exists]
                    <div class="jmeno">${jednotlivaVizitka.jmeno}</div>
                [/#if]
                [#if jednotlivaVizitka.firma?exists]
                    <div class="firma">${jednotlivaVizitka.firma}</div>
                [/#if]
                <div class="udaje">
                    <div class="adresa">
                        [#if jednotlivaVizitka.ulice?exists]
                            <div>${jednotlivaVizitka.ulice}</div>
                        [/#if]
                        [#if jednotlivaVizitka.obecPSc?exists]
                            <div>${jednotlivaVizitka.obecPSc}</div>
                        [/#if]
                    </div>
                    <div class="kontakty">
                        [#if jednotlivaVizitka.email?exists]
                            <div><i class="las la-at"></i> <span>${jednotlivaVizitka.email}</span></div>
                        [/#if]
                        [#if jednotlivaVizitka.telefon?exists]
                            <div><i class="las la-phone-alt"></i> <span>${jednotlivaVizitka.telefon}</span></div>
                        [/#if]
                        [#if jednotlivaVizitka.web?exists]
                            <div><i class="las la-globe"></i> <span>${jednotlivaVizitka.web}</span></div>
                        [/#if]
                    </div>
                </div>
            </div>
        [/#list]
    </a>
</div>
</body>
</html>
