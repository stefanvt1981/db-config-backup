--- Reset de rechten op de database
REVOKE ALL ON DATABASE "ZipperLogin" FROM PUBLIC;

--- Reset de rechten op het public schema
REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA "auth" FROM PUBLIC;
REVOKE ALL ON SCHEMA "identity" FROM PUBLIC;
REVOKE ALL ON SCHEMA "openiddict" FROM PUBLIC;

--- Zet de rechten op de zipperlogin database voor de ZipperLogin_applications role
GRANT CONNECT ON DATABASE "ZipperLogin" TO "ZipperLogin_applications";

--- Zet de rechten op de schema's voor de ZipperLogin_applications role
GRANT USAGE ON SCHEMA public TO "ZipperLogin_applications";
GRANT USAGE ON SCHEMA "auth" TO "ZipperLogin_applications";
GRANT USAGE ON SCHEMA "identity" TO "ZipperLogin_applications";
GRANT USAGE ON SCHEMA "openiddict" TO "ZipperLogin_applications";

--- Default rechten op schema's voor de ZipperLogin_applications role
ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT SELECT, INSERT, UPDATE, DELETE
    ON TABLES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT USAGE, SELECT, UPDATE
    ON SEQUENCES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT EXECUTE
    ON FUNCTIONS
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "auth"
    GRANT SELECT, INSERT, UPDATE, DELETE
    ON TABLES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "auth"
    GRANT USAGE, SELECT, UPDATE
    ON SEQUENCES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "auth"
    GRANT EXECUTE
    ON FUNCTIONS
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "identity"
    GRANT SELECT, INSERT, UPDATE, DELETE
    ON TABLES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "identity"
    GRANT USAGE, SELECT, UPDATE
    ON SEQUENCES
    TO "ZipperLogin_applications";

ALTER DEFAULT PRIVILEGES IN SCHEMA "identity"
    GRANT EXECUTE
    ON FUNCTIONS
    TO "ZipperLogin_applications";

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