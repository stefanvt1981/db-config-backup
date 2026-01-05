GRANT USAGE ON SCHEMA "openiddict" TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "openiddict"
    GRANT SELECT, INSERT, UPDATE, DELETE
    ON TABLES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "openiddict"
    GRANT USAGE, SELECT, UPDATE
    ON SEQUENCES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "openiddict"
    GRANT EXECUTE
    ON FUNCTIONS
    TO "ZipperLogin_applications";

SET ROLE "ZipperLogin_owner";

grant delete, insert, select, update on openiddict."OpenIddictApplications" to "ZipperLogin_applications";
grant delete, insert, select, update on openiddict."OpenIddictAuthorizations" to "ZipperLogin_applications";
grant delete, insert, select, update on openiddict."OpenIddictScopes" to "ZipperLogin_applications";
grant delete, insert, select, update on openiddict."OpenIddictTokens" to "ZipperLogin_applications";
grant delete, insert, select, update on openiddict."ReturnUrls" to "ZipperLogin_applications";