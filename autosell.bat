@echo off
setlocal

:: Define webhook URL
set "https://discord.com/api/webhooks/1320528324912742420/gENLg0Mn72ow8SF1GqCKH58967uIiMhWnwOB7w7NvK5wo8pacXeYCzYrfTVqSSjcnaXO"

:: Define message content
set "MESSAGE=Nigga it worked!"

:: Send message using curl
curl -X POST %WEBHOOK_URL% ^
    -H "Content-Type: application/json" ^
    -d "{\"content\": \"%MESSAGE%\"}"

:: Check if curl succeeded
if %ERRORLEVEL% == 0 (
    echo Message sent successfully!
) else (
    echo Failed to send message.
)

endlocal
