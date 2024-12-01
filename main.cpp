#include <pqxx/pqxx>  // PostgreSQL C++ library
#include <iostream>    // for std::cout, std::endl
#include <curl/curl.h> // for libcurl functions

// Function to send email
void sendEmail(const std::string& recipient, const std::string& subject, const std::string& body) {
    // Input validation
    if (recipient.empty() || subject.empty() || body.empty()) {
        std::cerr << "Error: Recipient, subject, and body cannot be empty!" << std::endl;
        return;
    }

    // Connect to PostgreSQL
    try {
        pqxx::connection C("postgresql://neondb_owner:b3CEjFSA4avN@ep-solitary-violet-a5x2a7m1.us-east-2.aws.neon.tech/Email_db?sslmode=require");

        // Check if the connection is open
        if (!C.is_open()) {
            std::cerr << "Error: Failed to open the database!" << std::endl;
            return;
        }

        std::cout << "Opened database successfully: " << C.dbname() << std::endl;

        // Create SQL query to insert email data into the "emails" table
        std::string sql = "INSERT INTO emails (recipient, subject, body) VALUES (" +
            C.quote(recipient) + ", " +
            C.quote(subject) + ", " +
            C.quote(body) + ");";

        // Create a non-transactional object
        pqxx::nontransaction N(C);

        // Execute the query
        N.exec(sql);
        std::cout << "Email information inserted into the database successfully!" << std::endl;
    }
    catch (const pqxx::sql_error& e) {
        std::cerr << "SQL error: " << e.what() << std::endl;
        std::cerr << "Query was: " << e.query() << std::endl;
        return;
    }
    catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return;
    }

    // Send the email using libcurl
    CURL* curl;
    CURLcode res;
    struct curl_slist* recipients = nullptr;
    struct curl_slist* headers = nullptr;

    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();
    if (curl) {
        // Set SMTP server URL (Replace with your SMTP server)
        curl_easy_setopt(curl, CURLOPT_URL, "smtp://smtp.yourmailserver.com");

        // Set the sender email
        curl_easy_setopt(curl, CURLOPT_MAIL_FROM, "your_email@example.com");

        // Set the recipient email
        recipients = curl_slist_append(recipients, recipient.c_str());
        curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);

        // Set email headers, including the subject
        headers = curl_slist_append(headers, ("Subject: " + subject).c_str());
        headers = curl_slist_append(headers, "Content-Type: text/plain; charset=UTF-8"); // Set content type for plain text
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);

        // Set the email body
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body.c_str());

        // Perform the email sending operation
        res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "Error: Email sending failed: " + std::string(curl_easy_strerror(res)) << std::endl;
        }
        else {
            std::cout << "Email sent successfully." << std::endl;
        }

        // Clean up
        curl_slist_free_all(recipients);
        curl_slist_free_all(headers);
        curl_easy_cleanup(curl);
    }
    curl_global_cleanup();
}

int main() {
    // Example input values for testing
    std::string recipient = "recipient@example.com";
    std::string subject = "Test Email";
    std::string body = "This is a test email.";

    sendEmail(recipient, subject, body);

    return 0;
}
