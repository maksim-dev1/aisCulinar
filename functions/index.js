const functions = require("firebase-functions");
const nodemailer = require("nodemailer");

// Настройка транспортера для отправки почты
const transporter = nodemailer.createTransport({
  service: "gmail",
  auth: {
    user: "kulinar242@gmail.com",
    pass: "@wl dc n",
  },
});

// Функция для отправки письма
exports.sendEmail = functions.https.onCall((data, context) => {
  const mailOptions = {
    from: "your-special-email@gmail.com",
    to: data.email,
    subject: "Verification Code",
    text: `Your verification code is: ${data.code}`,
  };

  return transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      return {success: false, error: error.toString()};
    }
    return {success: true};
  });
});
