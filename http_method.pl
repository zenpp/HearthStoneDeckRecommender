:- module(http_method).

http_method("GET", Url, Params, Contents, 200, [contentLength(CL), contentType(mt(text, html))]):-
    printf("%w\n", [http_method(Url, Params)]), flush(output),
    http_process(Url, Contents),
    string_length(Contents, CL).

http_process(Url, Contents) :-
    split_string(Url, "/", "/", L),
    printf("URL split: %w\n", [L]), flush(output),
    processURL(L, Contents).

processURL([""], "Hello World!").
processURL(["route1"], "You are at /route1").
