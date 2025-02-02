<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Planner - Create Event</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container container-create-event">
    <h2>Create a New Event</h2>

    <!-- Create Event Form -->
    <form id="createEventForm" method="post">
        <div class="fullwidth">
            <label for="name">Event Name:</label>
            <input type="text" id="name" name="name" pattern=".*\S.*" title="Field cannot be blank or contain only spaces" required>
        </div>

        <div class="form-group">
           <div>
                <label for="startTime">Start Time:</label>
                <input type="datetime-local" id="startTime" name="startTime" required>
            </div>
            <div>
                <label for="endTime">End Time:</label>
                <input type="datetime-local" id="endTime" name="endTime" required>
            </div>
        </div>

        <div class="form-group">
            <div>
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" min="0" required>
            </div>
            <div>
                <label for="maxCapacity">Max Capacity:</label>
                <input type="number" id="maxCapacity" name="maxCapacity" min="1" required>
            </div>
            <div>
                <label for="registrationDeadline">Registration Deadline:</label>
                <input type="date" id="registrationDeadline" name="registrationDeadline" required>
            </div>
        </div>

        <button type="submit" class="submit-btn">Create Event</button>
    </form>

    <p>
        <ul class="error">
            ${error}
        </ul>
    </p>

    <!-- Back to Events -->
    <p class="back-link"><a href="..">Back to Events</a></p>
</div>
</body>
</html>