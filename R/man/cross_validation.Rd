% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diagnostics.R
\name{cross_validation}
\alias{cross_validation}
\title{Cross-validation for time series.}
\usage{
cross_validation(model, horizon, units, period = NULL, initial = NULL)
}
\arguments{
\item{model}{Fitted Prophet model.}

\item{horizon}{Integer size of the horizon}

\item{units}{String unit of the horizon, e.g., "days", "secs".}

\item{period}{Integer amount of time between cutoff dates. Same units as
horizon. If not provided, 0.5 * horizon is used.}

\item{initial}{Integer size of the first training period. If not provided,
3 * horizon is used. Same units as horizon.}
}
\value{
A dataframe with the forecast, actual value, and cutoff date.
}
\description{
Computes forecasts from historical cutoff points. Beginning from initial,
makes cutoffs with a spacing of period up to (end - horizon).
}
\details{
When period is equal to the time interval of the data, this is the
technique described in https://robjhyndman.com/hyndsight/tscv/ .
}
