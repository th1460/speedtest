# speedtest

Projeto voltado para a utilização de ferramentas de *teste de velocidade na internet* no R. A ferramenta foi desenvolvida por [hrbrmstr/speedtest](https://github.com/hrbrmstr/speedtest).

O projeto consiste em coletar os dados de velocidade de download/upload com agendamento pelo [cron](https://en.wikipedia.org/wiki/Cron), salvar os dados no [PostgreSQL](https://www.postgresql.org/) e gerar análise gráfica no terminal com [coolbutuseless/devout](https://github.com/coolbutuseless/devout).

O ambiente utitlizado foi um [Raspberry Pi 3 Model B](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) e Sistema Operacional Raspbian (versão lite).

Para instalar o R versão 3.6.1 e instalar e configurar o PostgreSQL foi utilizado parte deste guia [aqui](https://community.rstudio.com/t/setting-up-your-own-shiny-server-rstudio-server-on-a-raspberry-pi-3b/18982).
