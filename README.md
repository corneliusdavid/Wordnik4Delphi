# Wordnik 4 Delphi #

![Wordnik Logo](/wordnik-logo-300px.png)

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

## Issues Encountered ##

During the talk, four issues are discussed:

1. The program accesses two endpoints of the API, one returns a JSON _array_, the other returns a JSON _object_ with an embedded array; we show how to set the root element in both the REST Debugger and the REST components of the Delphi project to parse this data in a consistent way.
2. The data module uses a TRESTResponseDataSetAdapter to transform the JSON response into a FireDAC table and when using the Copy Components button from the REST Debugger, a property is set which causes one of the fields to be incoorrectly converted, causing an error; this is easily corrected by changing the value of a single property.
3. Sending API requests in clear text is a violation of both Android and iOS security guidelines; while you can add exceptions, the better approach is to call the API with HTTPS.
4. On Windows (and in the REST Debugger), entering a word to send to the API is sent as typed; mobile devices often automatically upper-case the first letter of a word in a text edit control for simplicity and ease of typing. This causes a problem with a case-senstive API such as Wordnik.
