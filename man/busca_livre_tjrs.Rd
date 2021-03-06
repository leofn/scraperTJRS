% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crawlers.R
\name{busca_livre_tjrs}
\alias{busca_livre_tjrs}
\title{Busca livre nos diários judiciais do TJRS}
\usage{
busca_livre_tjrs(word, ed = "", session = F)
}
\arguments{
\item{session}{boolean indicando se a resposta será um objeto "response" do httr ou uma "html_session" do rvest.}

\item{palavra}{string com o texto que será procurado. Não é case-sensitive.}
}
\value{
A sessão ou resposta obtida quando se submete o form de busca livre.
}
\description{
Busca processos nos DJE's do TJRS com a opção de "busca livre" no link:
http://www.tjrs.jus.br/busca/?tb=dj
}
\examples{
busca_livre_tjrs('santa maria') \%>\%
xml2::read_html() \%>\%
rvest::html_nodes('a[ctype="c"]') \%>\%
rvest::html_text()
}
\seealso{
O form preenchido nessa função também pode ser usado pra fazer busca processual nos DJE's.
}

