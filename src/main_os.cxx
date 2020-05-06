//
#include "iostream"
#include <sqlite3.h>
#include <config.hxx>
using namespace std;

int main(int argCount, char **ppArgs)
{
    std::cout << PROJECT_DESCRIPTION << std::endl;    
    cout << "SQLITE VERSION: " << SQLITE_VERSION << endl;

    // Pointer to SQLite connection
    sqlite3 *db;

    // Save the connection result
    int exit = 0;
    exit = sqlite3_open("db/os_sqlite3.db", &db);

    // Test if there was an error
    if (exit)
    {
        cout << "Opened Database Erroneous: " << sqlite3_errmsg(db) << endl;
    }
    else
    {
        cout << "Opened Database Successfully!" << endl;
    }

    // Close the connection
    sqlite3_close(db);

    return argCount;
}
//