/*Trayendo datos*/
$.ajax({
    // En data puedes utilizar un objeto JSON, un array o un query string
    data: { "parametro1": "valor1", "parametro2": "valor2" },
    //Cambiar a type: POST si necesario
    type: "GET",
    // Formato de datos que se espera en la respuesta
    dataType: "json",
    // URL a la que se enviará la solicitud Ajax
    url: "indicadores.php",
})
    .done(function (data, textStatus, jqXHR) {
        datalab = data;
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
        if (console && console.log) {
            console.log("La solicitud a fallado: " + textStatus);
        }
    });
       
$(".tab1").on("click", function () {
    $(".tab1").addClass("active");
    $(".tab2").removeClass("active");
    $(".tab3").removeClass("active");
    $(".cont1").show();
    $(".cont2").hide();
    $(".cont3").hide();
});
$(".tab2").on("click", function () {
    $(".tab2").addClass("active");
    $(".tab1").removeClass("active");
    $(".tab3").removeClass("active");
    $(".cont2").show();
    $(".cont1").hide();
    $(".cont3").hide();
    /* Dibujando el chart con los datos*/
    var ctx = document.getElementById("chart-area").getContext("2d");
    window.myDoughnut = new Chart(ctx).Doughnut(datalab, { responsive: true });
});
$(".tab3").on("click", function () {
    $(".tab3").addClass("active");
    $(".tab2").removeClass("active");
    $(".tab1").removeClass("active");
    $(".cont3").show();
    $(".cont2").hide();
    $(".cont1").hide();
});