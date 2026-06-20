function doGet(e) {
  if (!e || !e.parameter) {
    return ContentService.createTextOutput("❌ Error: No parameters received.");
  }

  var hr = e.parameter.hr || "N/A";
  var spo2 = e.parameter.spo2 || "N/A";
  var atemp = e.parameter.atemp;
  var otemp = e.parameter.otemp;

  var subject = "🚨 Health Alert!";
  var message = "Abnormal Vital Signs Detected:\n\n" +
                "Heart Rate: " + hr + " bpm\n" +
                "SpO₂: " + spo2 + " %\n";

  // Add temperature readings only if they exist
  if (atemp !== undefined) {
    message += "Ambient Temp: " + atemp + " °C\n";
  }
  if (otemp !== undefined) {
    message += "Object Temp: " + otemp + " °C\n";
  }

  message += "\n📊 Check the ThingSpeak dashboard.";

  MailApp.sendEmail("arulm8007@gmail.com", subject, message);

  return ContentService.createTextOutput("✅ Email sent.");
}
