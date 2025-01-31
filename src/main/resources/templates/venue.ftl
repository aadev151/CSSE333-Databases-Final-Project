<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venue ${venue.name}</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="nav">
        <a href="/">Home</a>
        <a href="/events">Events</a>
        <a href="/logout">Log out</a>
    </div>
    <h2>Venue &quot;${venue.name}&quot;</h2>
    <ul>
        <li>Max capacity: ${venue.maxCapacity}</li>
        <li>Address: ${venue.getAddress()}</li>
    </ul>
    <h2>Available Public Events</h2>
    <a href="/venue/${venue.id}/addpublic">Create a new event</a>
    <div id="events-container">
        <#if events?? && events?size gt 0>
            <table >
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Price</th>
                    <th>Registration Deadline</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <#list events as event>
                    <tr>
                        <td>${event.name}</td>
                        <td>${event.startTime}</td>
                        <td>${event.endTime}</td>
                        <td>$${event.price}</td>
                        <td>${event.registrationDeadline}</td>
                        <td><a href="/event/${event.id}/register">Register</a></td>
                    </tr>
                </#list>
                </tbody>
            </table>
        <#else>
            <p>No available events at the moment.</p>
        </#if>
    </div>
</body>