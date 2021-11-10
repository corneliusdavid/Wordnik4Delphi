# Wordnik 4 Delphi #

This is a small cross-platform client application written in **Delphi 11** and using standard components found in the Professional Edition (*it may also work with the Community Edition but has not been tested there*).

It demonstrates how to access a public REST API and parse JSON results into FireDAC memory tables linked with LiveBindings to fill a couple of ListViews--all with only 5 lines of hand-written code that are used to send an entered word to the API.

This code accompanies a talk by David Cornelius given at DelphiCon 2021 called, *[Delphi Does Low-Code: Cross-Platform REST Client in < 30 Minutes!](https://delphicon.embarcadero.com/talks/delphi-does-low-code-cross-platform-rest-client-in-30-minutes/)*

## Delphi Project ##

The project is comprised of two units, a form and a data module. The API is called from `RESTRequest` components in the data module, the response returned in `RESTResponse` components. Then a `RESTResponseDataSetAdapter` is used to parse the JSON data into a FireDAC memory table. LiveBindings is used to sync the tables to `ListViews` on the main form showing the results of the API call without any code.

In fact, the only code necessary is to take an entered word on the form and send it to a small procedure in the data module which calls two API endpoints.

## Wordnik ##

In searching for a demonstrable API, I stumbled accross [Wordnik.com](https://wordnik.com) and thought displaying definitions and examples would make a nice presentation. The app can be easily expanded for other uses.

## API KEY ##

An API Key is required to make the calls to Wordnik. The DelphiCon presentation shows the app running but the API key was removed before submitting to GitHub. You need to register for your own API key, then update the parameter in both `RESTRequest` components in the data module of this project before attempting to call the API, otherwise, you'll get a **401 - Unauthorized** error response.