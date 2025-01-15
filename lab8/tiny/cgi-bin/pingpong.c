#include "csapp.h"

int main(void) {
    char *query_string, *headers;
    char content[MAXLINE], temp[MAXLINE];
    char fallback_no_value[] = "[no value]";
    if ((query_string = getenv("QUERY_STRING")) == NULL)
        query_string = fallback_no_value;
    if ((headers = getenv("REQUEST_HEADERS")) == NULL)
        headers = fallback_no_value;

    strcpy(content, "This is nagasaki service.\r\n");
    sprintf(temp, "Your query string: %s\r\n", query_string);
    strcat(content, temp);
    sprintf(temp, "Request headers:\r\n%s", headers);
    strcat(content, temp);
    strcat(content, "(headers end)\r\n");

    printf("Connection: close\r\n");
    printf("Content-Length: %d\r\n", (int)strlen(content));
    printf("Content-Type: text/plain\r\n");
    printf("X-Powered-By: Ako from Team NFO\r\n\r\n");
    printf("%s", content);
    fflush(stdout);

    exit(0);
}
